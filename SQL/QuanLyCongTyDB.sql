USE [QuanLyCongTyDB]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCongViec] [varchar](10) NOT NULL,
	[TenCongViec] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaNV] [varchar](10) NOT NULL,
	[MaCongViec] [varchar](10) NOT NULL,
	[Luong] [float] NOT NULL,
 CONSTRAINT [PK_KetQua] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaCongViec] ASC,
	[Luong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DienThoai] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaQL] [varchar](10) NOT NULL,
	[MaCongViec] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC,
	[MaCongViec] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](10) NOT NULL,
	[SoNV] [int] NOT NULL,
	[TruongPhong] [nvarchar](50) NOT NULL,
	[NVQuanLy] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[MaQL] [varchar](10) NOT NULL,
	[TenQL] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DienThoai] [varchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy_Lam_CongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy_Lam_CongViec](
	[MaQL] [varchar](10) NOT NULL,
	[MaCongViec] [varchar](10) NOT NULL,
	[SoPhongDaLam] [int] NOT NULL,
 CONSTRAINT [PK_QuanLy_Lam_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC,
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](15) NOT NULL,
	[MatKhau] [varchar](15) NOT NULL,
	[Loai] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec]) VALUES (N'CVBV', N'Bảo Vệ')
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec]) VALUES (N'CVTH', N'Tin Phòng')
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec]) VALUES (N'CVTK', N'Thống Kê')
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec]) VALUES (N'CVVS', N'Vệ Sinh')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Email], [DienThoai], [DiaChi], [MaPhong]) VALUES (N'NV001', N'Trần', CAST(N'2022-12-04T00:00:00.000' AS DateTime), N'ac@gmail.com', N'1234', N'Củ', N'P001')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Email], [DienThoai], [DiaChi], [MaPhong]) VALUES (N'NV002', N'Tan', CAST(N'2022-12-15T00:00:00.000' AS DateTime), N'ac@gmail.com', N'1234', N'Củ', N'P001')
GO
INSERT [dbo].[PhanCong] ([MaQL], [MaCongViec], [MaPhong]) VALUES (N'QL001', N'CVVS', N'P002')
INSERT [dbo].[PhanCong] ([MaQL], [MaCongViec], [MaPhong]) VALUES (N'QL002', N'CVTK', N'P003')
INSERT [dbo].[PhanCong] ([MaQL], [MaCongViec], [MaPhong]) VALUES (N'QL002', N'CVVS', N'P002')
GO
INSERT [dbo].[Phong] ([MaPhong], [SoNV], [TruongPhong], [NVQuanLy]) VALUES (N'P001', 10, N'Nguyen Van A', N'QL001')
INSERT [dbo].[Phong] ([MaPhong], [SoNV], [TruongPhong], [NVQuanLy]) VALUES (N'P002', 20, N'Nguyen Van B', N'QL002')
INSERT [dbo].[Phong] ([MaPhong], [SoNV], [TruongPhong], [NVQuanLy]) VALUES (N'P003', 30, N'Nguyen Van C', N'QL002')
GO
INSERT [dbo].[QuanLy] ([MaQL], [TenQL], [NgaySinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'QL001', N'NguyenVan', CAST(N'2000-11-16T00:00:00.000' AS DateTime), N'Nam', N'123456', N'abc@gmail.com', N'CuChi')
INSERT [dbo].[QuanLy] ([MaQL], [TenQL], [NgaySinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'QL002', N'Tan Tran', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'Nam', N'09876', N'bcd@gmail.com', N'HoChiMinh')
INSERT [dbo].[QuanLy] ([MaQL], [TenQL], [NgaySinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'QL003', N'NguyenVan', CAST(N'2000-11-16T00:00:00.000' AS DateTime), N'Nữ', N'123456', N'abc@gmail.com', N'CuChi')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Loai]) VALUES (N'admin', N'admin', 0)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Loai]) VALUES (N'nguyenvan', N'123457', 1)
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_CongViec] FOREIGN KEY([MaCongViec])
REFERENCES [dbo].[CongViec] ([MaCongViec])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_CongViec]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Phong]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_CongViec] FOREIGN KEY([MaCongViec])
REFERENCES [dbo].[CongViec] ([MaCongViec])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_CongViec]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_Phong]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_QuanLy] FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_QuanLy]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_QuanLy] FOREIGN KEY([NVQuanLy])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_QuanLy]
GO
ALTER TABLE [dbo].[QuanLy_Lam_CongViec]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_Lam_CongViec_CongViec] FOREIGN KEY([MaCongViec])
REFERENCES [dbo].[CongViec] ([MaCongViec])
GO
ALTER TABLE [dbo].[QuanLy_Lam_CongViec] CHECK CONSTRAINT [FK_QuanLy_Lam_CongViec_CongViec]
GO
ALTER TABLE [dbo].[QuanLy_Lam_CongViec]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_Lam_CongViec_QuanLy] FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[QuanLy_Lam_CongViec] CHECK CONSTRAINT [FK_QuanLy_Lam_CongViec_QuanLy]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaCongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaCongViec]
	@MaCV varchar(10),
	@TenCV nvarchar(50)
AS
		UPDATE CongViec
	SET TenCongViec = @TenCV
	WHERE MaCongViec = @MaCV
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVien]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SuaNhanVien]
	@MaNV varchar(10),
	@TenNV nvarchar(50),
	@NgaySinh varchar(50),
	@Email nvarchar(50),
	@DienThoai varchar(10),
	@DiaChi nvarchar(50),
	@MaPhong varchar(10)
AS 
	UPDATE NhanVien 
	SET TenNV = @tenNV, NgaySinh = @ngaySinh,Email=@Email, DienThoai = @dienThoai,DiaChi = @diaChi,MaPhong =@maPhong
	WHERE MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVienQL]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[sp_SuaNhanVienQL]
	@MaQL varchar(10),
	@TenQL nvarchar(50),
	@NgaySinh varchar(50),
	@GioiTinh nvarchar(10),
	@DienThoai varchar(10),
	@Email nvarchar(50),
	@Diachi nvarchar(50)
AS 
	UPDATE QuanLy 
	SET TenQL = @tenQL, NgaySinh = @ngaySinh,GioiTinh = @gioiTinh, DienThoai = @dienThoai,Email = @email ,DiaChi = @diaChi
	WHERE MaQL = @MaQL
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhanCong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SuaPhanCong]
	@MaQL varchar(10),
	@MaCV varchar(10),
	@MaPhong varchar(10)
as
	UPDATE PhanCong
	SET MaCongViec = @MaCV, MaPhong = @MaPhong
	WHERE MaQL = @MaQL
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SuaPhong]
	@MaPhong varchar(10),
	@SoNV int,
	@TruongPhong nvarchar(50),
	@NVQuanLy varchar(10)
AS
	UPDATE Phong
	SET SoNV = @SoNV, TruongPhong = @TruongPhong, NVQuanLy = @NVQuanLy
	WHERE MaPhong = @MaPhong
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiKhoan]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SuaTaiKhoan]
	@ten varchar(15),
	@matKhau varchar(15),
	@loai int
AS 
	UPDATE TaiKhoan 
	SET MatKhau = @matKhau, Loai = @loai 
	WHERE TenDangNhap = @ten
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemCongViec]
	@MaCV varchar(10),
	@TenCV nvarchar(50)
AS
	INSERT INTO CongViec VALUES (@MaCV, @TenCV)	
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemNhanVien]
	@MaNV varchar(10),
	@TenNV nvarchar(50),
	@NgaySinh varchar(50),
	@Email nvarchar(50),
	@DienThoai varchar(10),
	@DiaChi nvarchar(50),
	@MaPhong varchar(10)
AS
	INSERT INTO NhanVien VALUES (@MaNV,@TenNV,@NgaySinh,@Email,@DienThoai,@DiaChi,@MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVienQL]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemNhanVienQL]
	@MaQL varchar(10),
	@TenQL nvarchar(50),
	@NgaySinh varchar(50),
	@GioiTinh nvarchar(10),
	@DienThoai varchar(10),
	@Email nvarchar(50),
	@Diachi nvarchar(50)
AS
	INSERT INTO QuanLy VALUES (@MaQL,@TenQL,@NgaySinh,@GioiTinh,@DienThoai,@Email,@Diachi)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhanCong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemPhanCong]
	@MaQL varchar(10),
	@MaCongViec varchar(10),
	@MaPhong varchar(10)
AS 
	INSERT INTO PhanCong VALUES (@MaQL, @MaCongViec, @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemPhong]
	@MaPhong varchar(10),
	@SoNV int,
	@TruongPhong nvarchar(50),
	@NVQuanLy varchar(10)
AS
	INSERT INTO Phong VALUES (@MaPhong,@SoNV,@TruongPhong,@NVQuanLy)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoan]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemTaiKhoan]
	@TenDangNhap varchar(15),
	@MatKhau varchar(15),
	@Loai int
AS
	INSERT INTO TaiKhoan VALUES (@TenDangNhap, @MatKhau, @Loai)
GO
/****** Object:  StoredProcedure [dbo].[sp_TimCongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TimCongViec]
	@tenCV nvarchar(50)
AS
	SELECT * FROM CongViec WHERE TenCongViec LIKE CONCAT('%' ,@tenCV,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimNhanVien]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROC [dbo].[sp_TimNhanVien]
	@TenNV varchar(50)
AS
	SELECT * FROM NhanVien WHERE TenNV LIKE CONCAT('%',  @tenNV,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimNhanVienQL]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimNhanVienQL]
	@TenQL varchar(50)
AS
	SELECT * FROM QuanLy WHERE TenQL LIKE CONCAT('%',  @tenQL,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimPhanCong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TimPhanCong]
	@MaQL varchar(10)
as
	SELECT * FROM PhanCong WHERE MaQL LIKE CONCAT('%',  @MaQL,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimPhong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TimPhong]
	@MaPhong varchar(10)
AS
	SELECT * FROM Phong WHERE MaPhong LIKE CONCAT('%',  @MaPhong,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimTaiKhoan]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimTaiKhoan]
	@Ten varchar(15)
AS
	SELECT * FROM TaiKhoan WHERE TenDangNhap LIKE CONCAT('%',  @ten,'%')
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaCongViec]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_XoaCongViec]
	@MaCV varchar(10)
AS
	DELETE FROM CongViec WHERE MaCongViec = @MaCV
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNhanVien]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaNhanVien]
	@maNV varchar(10)
AS 
	DELETE FROM NhanVien WHERE MaNV = @maNV
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNhanVienQL]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaNhanVienQL]
	@tenQL varchar(50)
AS 
	DELETE FROM QuanLy WHERE TenQL = @tenQL
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaPhanCong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_XoaPhanCong]
	@MaQL varchar(10)
as
	DELETE FROM PhanCong WHERE MaQL = @MaQL
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaPhong]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_XoaPhong]
	@MaPhong varchar(10)
AS
	
	DELETE FROM Phong WHERE MaPhong = @MaPhong
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 23-Dec-22 5:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaTaiKhoan]
	@ten varchar(15)
AS 
	DELETE FROM TaiKhoan WHERE TenDangNhap = @ten
GO
