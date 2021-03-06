USE [HIeuThuoc_QuocCuong]
GO
/****** Object:  Table [dbo].[chitiethoadonnhap]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadonnhap](
	[so_chung_tu_nhap] [nvarchar](50) NOT NULL,
	[ma_thuoc] [nvarchar](10) NOT NULL,
	[don_gia_von] [int] NOT NULL,
	[so_luong_nhap] [int] NOT NULL,
 CONSTRAINT [PK_chitiethoadonnhap] PRIMARY KEY CLUSTERED 
(
	[so_chung_tu_nhap] ASC,
	[ma_thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitiethoadonxuat]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadonxuat](
	[so_chung_tu_xuat] [nvarchar](50) NOT NULL,
	[ma_thuoc] [nvarchar](10) NOT NULL,
	[don_gia_ban] [int] NULL,
	[so_luong_xuat] [int] NOT NULL,
 CONSTRAINT [PK_chitiethoadonxuat] PRIMARY KEY CLUSTERED 
(
	[so_chung_tu_xuat] ASC,
	[ma_thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadonnhap]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadonnhap](
	[so_chung_tu_nhap] [nvarchar](50) NOT NULL,
	[ma_NV] [nvarchar](10) NOT NULL,
	[ngay_gio_nhap] [datetime] NOT NULL,
	[ten_nha_cung_cap] [nvarchar](150) NULL,
	[tong_tien_nhap] [int] NULL,
 CONSTRAINT [PK_hoadonnhap] PRIMARY KEY CLUSTERED 
(
	[so_chung_tu_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadonxuat]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadonxuat](
	[so_chung_tu_xuat] [nvarchar](50) NOT NULL,
	[ma_NV] [nvarchar](10) NOT NULL,
	[ngay_gio_xuat] [datetime] NOT NULL,
	[tong_tien_ban] [int] NULL,
 CONSTRAINT [PK_hoadonxuat] PRIMARY KEY CLUSTERED 
(
	[so_chung_tu_xuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[ma_NV] [nvarchar](10) NOT NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[chuc_vu] [nvarchar](50) NOT NULL,
	[gioi_tinh] [nvarchar](10) NOT NULL,
	[tuoi] [int] NOT NULL,
	[dia_chi] [nvarchar](150) NULL,
	[email] [nvarchar](50) NULL,
	[so_dt] [nchar](15) NULL,
	[ten_dang_nhap] [nvarchar](20) NOT NULL,
	[mat_khau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[ma_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhomthuoc]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomthuoc](
	[ma_nhom] [nvarchar](10) NOT NULL,
	[ten_nhom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhomthuoc] PRIMARY KEY CLUSTERED 
(
	[ma_nhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuoc]    Script Date: 6/6/2021 8:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuoc](
	[ma_thuoc] [nvarchar](10) NOT NULL,
	[ma_nhom] [nvarchar](10) NOT NULL,
	[ten_thuoc] [nvarchar](50) NOT NULL,
	[cong_dung] [nvarchar](150) NULL,
	[thanh_phan] [nvarchar](150) NULL,
	[don_vi_tinh] [nvarchar](10) NOT NULL,
	[xuat_xu] [nvarchar](150) NULL,
	[gia_ban] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
 CONSTRAINT [PK_thuoc] PRIMARY KEY CLUSTERED 
(
	[ma_thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chitiethoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadonnhap_hoadonnhap] FOREIGN KEY([so_chung_tu_nhap])
REFERENCES [dbo].[hoadonnhap] ([so_chung_tu_nhap])
GO
ALTER TABLE [dbo].[chitiethoadonnhap] CHECK CONSTRAINT [FK_chitiethoadonnhap_hoadonnhap]
GO
ALTER TABLE [dbo].[chitiethoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadonnhap_thuoc] FOREIGN KEY([ma_thuoc])
REFERENCES [dbo].[thuoc] ([ma_thuoc])
GO
ALTER TABLE [dbo].[chitiethoadonnhap] CHECK CONSTRAINT [FK_chitiethoadonnhap_thuoc]
GO
ALTER TABLE [dbo].[chitiethoadonxuat]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadonxuat_hoadonxuat] FOREIGN KEY([so_chung_tu_xuat])
REFERENCES [dbo].[hoadonxuat] ([so_chung_tu_xuat])
GO
ALTER TABLE [dbo].[chitiethoadonxuat] CHECK CONSTRAINT [FK_chitiethoadonxuat_hoadonxuat]
GO
ALTER TABLE [dbo].[chitiethoadonxuat]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadonxuat_thuoc] FOREIGN KEY([ma_thuoc])
REFERENCES [dbo].[thuoc] ([ma_thuoc])
GO
ALTER TABLE [dbo].[chitiethoadonxuat] CHECK CONSTRAINT [FK_chitiethoadonxuat_thuoc]
GO
ALTER TABLE [dbo].[hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_hoadonnhap_nhanvien] FOREIGN KEY([ma_NV])
REFERENCES [dbo].[nhanvien] ([ma_NV])
GO
ALTER TABLE [dbo].[hoadonnhap] CHECK CONSTRAINT [FK_hoadonnhap_nhanvien]
GO
ALTER TABLE [dbo].[hoadonxuat]  WITH CHECK ADD  CONSTRAINT [FK_hoadonxuat_nhanvien] FOREIGN KEY([ma_NV])
REFERENCES [dbo].[nhanvien] ([ma_NV])
GO
ALTER TABLE [dbo].[hoadonxuat] CHECK CONSTRAINT [FK_hoadonxuat_nhanvien]
GO
ALTER TABLE [dbo].[thuoc]  WITH CHECK ADD  CONSTRAINT [FK_thuoc_nhomthuoc] FOREIGN KEY([ma_nhom])
REFERENCES [dbo].[nhomthuoc] ([ma_nhom])
GO
ALTER TABLE [dbo].[thuoc] CHECK CONSTRAINT [FK_thuoc_nhomthuoc]
GO
