USE master
GO
CREATE DATABASE PTPM_FINALLY_JAVA_SOF3011
GO 
USE [PTPM_FINALLY_JAVA_SOF3011]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[SoThich] [nvarchar](30) NULL,
	[GioiTinh] [int] NULL,
	[IdMQH] [int] NULL,
	[TrangThai] [int] NULL,
)
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[LoaiSP](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[LoaiXM](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[MoiQuanHe](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](50) NULL,
	[IdCV] [int] NULL,
	[TrangThai] [int] NULL,
)
GO
CREATE TABLE [dbo].[NXB](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[Sach](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgayXuatBan] [date] NULL,
	[SoTrang] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
	[IdNXB] [int] NULL,
	[TrangThai] [int] NULL,
)
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgaySX] [date] NULL,
	[Mota] [nvarchar](30) NULL,
	[Website] [nvarchar](30) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[SoLuong] [int] NULL,
	[IdLoaiSP] [int] NULL,
	[TrangThai] [int] NULL,
)
GO
CREATE TABLE [dbo].[XeMay](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgaySX] [date] NULL,
	[Mota] [nvarchar](30) NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[SoLuong] [int] NULL,
	[Website] [nvarchar](30) NULL,
	[IdLXM] [int] NULL,
	[TrangThai] [int] NULL,
)
GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([Id], [Ma], [Ten], [NgaySinh], [SoThich], [GioiTinh], [IdMQH], [TrangThai]) VALUES (1, N'B001', N'Nguyễn Văn A', CAST(N'2004-04-28' AS Date), N'Ăn', 1, 1, 1)
INSERT [dbo].[Ban] ([Id], [Ma], [Ten], [NgaySinh], [SoThich], [GioiTinh], [IdMQH], [TrangThai]) VALUES (2, N'B002', N'Nguyễn Thị C', CAST(N'2005-11-21' AS Date), N'Ngủ', 0, 2, 1)
INSERT [dbo].[Ban] ([Id], [Ma], [Ten], [NgaySinh], [SoThich], [GioiTinh], [IdMQH], [TrangThai]) VALUES (3, N'B003', N'Phạm Văn B', CAST(N'2002-12-25' AS Date), N'Lăn', 1, 3, 1)
INSERT [dbo].[Ban] ([Id], [Ma], [Ten], [NgaySinh], [SoThich], [GioiTinh], [IdMQH], [TrangThai]) VALUES (4, N'B004', N'Trần Quang D', CAST(N'2004-07-12' AS Date), N'Xem Phim', 1, 2, 1)
INSERT [dbo].[Ban] ([Id], [Ma], [Ten], [NgaySinh], [SoThich], [GioiTinh], [IdMQH], [TrangThai]) VALUES (5, N'B005', N'Nguyễn Diệu L', CAST(N'2002-09-21' AS Date), N'Ngủ', 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Ban] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([Id], [Ma], [Ten]) VALUES (1, N'LSP001', N'Đồ Dùng Trong Nhà')
INSERT [dbo].[LoaiSP] ([Id], [Ma], [Ten]) VALUES (2, N'LSP002', N'Đồ Dùng Học Tập')
INSERT [dbo].[LoaiSP] ([Id], [Ma], [Ten]) VALUES (3, N'LSP003', N'Đồ Chơi Trẻ Em')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiXM] ON 

INSERT [dbo].[LoaiXM] ([Id], [Ma], [Ten]) VALUES (1, N'LXM001', N'Xe Ga')
INSERT [dbo].[LoaiXM] ([Id], [Ma], [Ten]) VALUES (2, N'LXM002', N'Xe Số')
INSERT [dbo].[LoaiXM] ([Id], [Ma], [Ten]) VALUES (3, N'LXL003', N'Xe Điện')
SET IDENTITY_INSERT [dbo].[LoaiXM] OFF
GO
SET IDENTITY_INSERT [dbo].[MoiQuanHe] ON 

INSERT [dbo].[MoiQuanHe] ([Id], [Ma], [Ten]) VALUES (1, N'MQH001', N'Độc Thân')
INSERT [dbo].[MoiQuanHe] ([Id], [Ma], [Ten]) VALUES (2, N'MQH002', N'Có Người Yêu')
INSERT [dbo].[MoiQuanHe] ([Id], [Ma], [Ten]) VALUES (3, N'MQH003', N'Mập Mờ')
SET IDENTITY_INSERT [dbo].[MoiQuanHe] OFF
GO
SET IDENTITY_INSERT [dbo].[NXB] ON 

INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (1, N'N001', N'Nguyễn Văn Anh')
INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (2, N'N002', N'Trần Thị Ngọc')
INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (3, N'N003', N'Phạm Văn Đồng')
SET IDENTITY_INSERT [dbo].[NXB] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([Id], [Ma], [Ten], [NgayXuatBan], [SoTrang], [DonGia], [IdNXB], [TrangThai]) VALUES (1, N'S001', N'Tại Sao Không Có Em', CAST(N'2023-04-21' AS Date), 100, CAST(100000 AS Decimal(20, 0)), 1, 1)
INSERT [dbo].[Sach] ([Id], [Ma], [Ten], [NgayXuatBan], [SoTrang], [DonGia], [IdNXB], [TrangThai]) VALUES (2, N'S002', N'Yêu Từ Đâu Mà Ra', CAST(N'2022-11-11' AS Date), 200, CAST(200000 AS Decimal(20, 0)), 2, 1)
INSERT [dbo].[Sach] ([Id], [Ma], [Ten], [NgayXuatBan], [SoTrang], [DonGia], [IdNXB], [TrangThai]) VALUES (3, N'S003', N'Tìm Lại Chính Mình', CAST(N'2019-02-21' AS Date), 150, CAST(150000 AS Decimal(20, 0)), 2, 1)
INSERT [dbo].[Sach] ([Id], [Ma], [Ten], [NgayXuatBan], [SoTrang], [DonGia], [IdNXB], [TrangThai]) VALUES (4, N'S004', N'Vì Sao', CAST(N'2022-05-19' AS Date), 320, CAST(200000 AS Decimal(20, 0)), 1, 1)
INSERT [dbo].[Sach] ([Id], [Ma], [Ten], [NgayXuatBan], [SoTrang], [DonGia], [IdNXB], [TrangThai]) VALUES (5, N'S005', N'Tư Duy Nhanh Và Chậm', CAST(N'2024-03-11' AS Date), 400, CAST(300000 AS Decimal(20, 0)), 3, 1)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [NgaySX], [Mota], [Website], [GiaBan], [SoLuong], [IdLoaiSP], [TrangThai]) VALUES (6, N'SP001', N'Chổi', CAST(N'2023-02-19' AS Date), N'Loại tốt', N'shopee.vn', CAST(200000 AS Decimal(20, 0)), 1000, 1, 1)
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [NgaySX], [Mota], [Website], [GiaBan], [SoLuong], [IdLoaiSP], [TrangThai]) VALUES (7, N'SP002', N'Quyển Vở', CAST(N'2023-03-12' AS Date), N'Loại tốt', N'shopee.vn', CAST(10000 AS Decimal(20, 0)), 10000, 2, 1)
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [NgaySX], [Mota], [Website], [GiaBan], [SoLuong], [IdLoaiSP], [TrangThai]) VALUES (8, N'SP003', N'Bút Bi', CAST(N'2023-03-12' AS Date), N'Loại tốt', N'shopee.vn', CAST(5000 AS Decimal(20, 0)), 10000, 2, 1)
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [NgaySX], [Mota], [Website], [GiaBan], [SoLuong], [IdLoaiSP], [TrangThai]) VALUES (9, N'SP004', N'Oto Điều Khiển Từ Xa', CAST(N'2023-05-12' AS Date), N'Loại tốt', N'shopee.vn', CAST(200000 AS Decimal(20, 0)), 200000, 3, 1)
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten], [NgaySX], [Mota], [Website], [GiaBan], [SoLuong], [IdLoaiSP], [TrangThai]) VALUES (10, N'SP005', N'Mô Hình Oto', CAST(N'2024-01-12' AS Date), N'Loại tốt', N'shopee.vn', CAST(300000 AS Decimal(20, 0)), 100000, 3, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[XeMay] ON 

INSERT [dbo].[XeMay] ([Id], [Ma], [Ten], [NgaySX], [Mota], [GiaNhap], [GiaBan], [SoLuong], [Website], [IdLXM], [TrangThai]) VALUES (1, N'XM001', N'SH350i', CAST(N'2022-02-12' AS Date), N'Loại tốt', CAST(100000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), 10, N'shopee.vn', 1, 1)
INSERT [dbo].[XeMay] ([Id], [Ma], [Ten], [NgaySX], [Mota], [GiaNhap], [GiaBan], [SoLuong], [Website], [IdLXM], [TrangThai]) VALUES (2, N'XM002', N'Vision', CAST(N'2022-03-21' AS Date), N'Loại tốt', CAST(200000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), 20, N'shopee.vn', 1, 1)
INSERT [dbo].[XeMay] ([Id], [Ma], [Ten], [NgaySX], [Mota], [GiaNhap], [GiaBan], [SoLuong], [Website], [IdLXM], [TrangThai]) VALUES (3, N'XM003', N'Wave Anpha 110', CAST(N'2021-02-19' AS Date), N'Loại tốt', CAST(300000 AS Decimal(20, 0)), CAST(400000 AS Decimal(20, 0)), 20, N'shopee.vn', 2, 1)
INSERT [dbo].[XeMay] ([Id], [Ma], [Ten], [NgaySX], [Mota], [GiaNhap], [GiaBan], [SoLuong], [Website], [IdLXM], [TrangThai]) VALUES (4, N'XM004', N'VinFast Klara', CAST(N'2022-03-22' AS Date), N'Loại tốt', CAST(400000 AS Decimal(20, 0)), CAST(500000 AS Decimal(20, 0)), 30, N'shopee.vn', 3, 1)
INSERT [dbo].[XeMay] ([Id], [Ma], [Ten], [NgaySX], [Mota], [GiaNhap], [GiaBan], [SoLuong], [Website], [IdLXM], [TrangThai]) VALUES (5, N'XM005', N'Pega eSH', CAST(N'2023-02-12' AS Date), N'Loại tốt', CAST(200000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), 12, N'shopee.vn', 3, 1)
SET IDENTITY_INSERT [dbo].[XeMay] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 
GO
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(1, N'4bI6cM5971', N'Yuen Yu Ling', N'Yuen Yu Ling', N'Yuen Yu Ling', N'Nam', '2022-02-12', N'626 Dongtai 5th St', N'769-2128-9563', N'LD5Bp0oebu', 14, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(2, N'sOHD2OkDYU', N'Helen Gonzales', N'Helen Gonzales', N'Helen Gonzales', N'Nam', '2022-02-12', N'40 Edward Ave, Braunstone Town', N'(116) 236 3121', N'mQgRLCODga', 7, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(3, N'rS0dMHLlzG', N'Mok Fu Shing', N'Mok Fu Shing', N'Mok Fu Shing', N'Nam', '2022-02-12', N'1-5-4, Higashi-Shimbashi, Minato-ku', N'3-7501-8839', N'P7669hqZzi', 45, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(4, N'lbhtiPbc8f', N'Tanaka Shino', N'Tanaka Shino', N'Tanaka Shino', N'Nu', '2022-02-12', N'304 Lark Street', N'838-265-8339', N'LBCDw1lIMB', 1, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(5, N'JXYcDAicay', N'Catherine Stone', N'Catherine Stone', N'Catherine Stone', N'Nu', '2022-02-12', N'87 Portland St', N'(161) 704 3416', N'rW4NyqmwLu', 15, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(6, N'VcYYvB4BW1', N'Kong Kwok Ming', N'Kong Kwok Ming', N'Kong Kwok Ming', N'Nam', '2022-02-12', N'898 Rush Street', N'312-927-8707', N'i96uX0PQmY', 17, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(7, N'MHwB2cDBp4', N'Hao Jialun', N'Hao Jialun', N'Hao Jialun', N'Nu', '2022-02-12', N'771 FuXingMenNei Street, XiCheng District', N'130-7870-9901', N'gHfwvMd2OR', 39, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(8, N'AAkUKZyz9k', N'Koyama Aoi', N'Koyama Aoi', N'Koyama Aoi', N'Nam', '2022-02-12', N'287 Jiangnan West Road, Haizhu District', N'198-7769-1754', N'uCmJXdhgpn', 23, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(9, N'1kZjMCIQ6K', N'Carl Hunt', N'Carl Hunt', N'Carl Hunt', N'Nam', '2022-02-12', N'5-4-19 Kikusui 3 Jo, Shiroishi Ward,', N'11-557-9539', N'krSECfmWHf', 27, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(10, N'SXi2TJoL6z', N'Kwan Wing Fat', N'Kwan Wing Fat', N'Kwan Wing Fat', N'Nam', '2022-02-12', N'1-1-20 Deshiro, Nishinari Ward', N'80-8901-2533', N'YIJscJpS6E', 37, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(11, N'MhUrsEeOgj', N'Yang Jialun', N'Yang Jialun', N'Yang Jialun', N'Nam', '2022-02-12', N'403 Wyngate Dr', N'5424 623625', N'2kg8TrrAqH', 38, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(12, N'aLFb9NB85P', N'Xu Zitao', N'Xu Zitao', N'Xu Zitao', N'Nam', '2022-02-12', N'453 Lodge Ln, Toxteth', N'7091 787721', N'ikeqH1qH0Y', 32, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(13, N'X9zHYUNQKB', N'Wanda Gutierrez', N'Wanda Gutierrez', N'Wanda Gutierrez', N'Nam', '2022-02-12', N'2-3-13 Yoyogi, Shibuya-ku', N'3-4685-3451', N'kSU06Qe4Hu', 40, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(14, N'Zk7HTMSbsX', N'Fong Ka Keung', N'Fong Ka Keung', N'Fong Ka Keung', N'Nu', '2022-02-12', N'774 Tangyuan Street 5th Alley, Airport Road, Baiyun', N'20-9966-4183', N'u77x9Nn3Ll', 25, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(15, N'6wb9IjJlXl', N'Aoki Shino', N'Aoki Shino', N'Aoki Shino', N'Nu', '2022-02-12', N'345 Hanover Street', N'7003 580382', N'Hm5LhEWsOt', 28, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(16, N'amgA3WhfNJ', N'Mo Xiuying', N'Mo Xiuying', N'Mo Xiuying', N'Nu', '2022-02-12', N'1-7-6 Saidaiji Akodacho', N'90-5525-9197', N'lzzSN3cAya', 35, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(17, N'qiK1RRDzPh', N'Clara Rice', N'Clara Rice', N'Clara Rice', N'Nam', '2022-02-12', N'810 Mosley St', N'(161) 156 5436', N'xfpnvO2poz', 40, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(18, N'u1iFM2dN6L', N'Zhou Lan', N'Zhou Lan', N'Zhou Lan', N'Nu', '2022-02-12', N'1-5-14, Higashi-Shimbashi, Minato-ku', N'90-0457-5516', N'DVdvnkYvRv', 44, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(19, N'iekLuiVJxX', N'Pan Xiuying', N'Pan Xiuying', N'Pan Xiuying', N'Nu', '2022-02-12', N'6-1-9, Miyanomori 4 JÅ , Chuo Ward', N'70-2504-6641', N'zDkcL3FTJR', 3, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(20, N'8cq3NekqIC', N'Ono Yota', N'Ono Yota', N'Ono Yota', N'Nam', '2022-02-12', N'544 Xiaoping E Rd, Baiyun ', N'171-5610-3571', N'IxA64rfdB2', 8, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(21, N'BmG8mzgPTc', N'Nakayama Shino', N'Nakayama Shino', N'Nakayama Shino', N'Nu', '2022-02-12', N'970 Huanqu South Street 2nd Alley', N'769-085-7263', N'7Obogee8o2', 13, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(22, N'yzaIKWKrhO', N'Raymond Rice', N'Raymond Rice', N'Raymond Rice', N'Nu', '2022-02-12', N'25 Central Avenue', N'838-288-7981', N'JfmwJ5Z7na', 21, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(23, N'XCjl2LJfui', N'Yokoyama Momoka', N'Yokoyama Momoka', N'Yokoyama Momoka', N'Nam', '2022-02-12', N'72 Wicklow Road', N'614-072-5650', N'r06AWhU6Ra', 40, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(24, N'shF9ksUiDW', N'Chang Zhiyuan', N'Chang Zhiyuan', N'Chang Zhiyuan', N'Nam', '2022-02-12', N'132 North Michigan Ave', N'312-039-9040', N'69Fr6OWOzG', 20, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(25, N'rkzf9iRFrk', N'Ernest Weaver', N'Ernest Weaver', N'Ernest Weaver', N'Nam', '2022-02-12', N'881 Pedway', N'312-934-1181', N'KsvuJKioqI', 31, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(26, N'ClExd85hLr', N'Kathryn Payne', N'Kathryn Payne', N'Kathryn Payne', N'Nu', '2022-02-12', N'996 Flatbush Ave', N'718-621-0933', N'kYMnHxBp4Z', 19, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(27, N'KjDAx9DowO', N'Emma Hamilton', N'Emma Hamilton', N'Emma Hamilton', N'Nam', '2022-02-12', N'221 Shanhu Rd', N'769-383-2107', N'OAB7h7eFWw', 28, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(28, N'X7O6lnEASb', N'Tsui Wing Suen', N'Tsui Wing Suen', N'Tsui Wing Suen', N'Nam', '2022-02-12', N'201 Sky Way', N'213-465-6769', N'QpDXriDMxE', 46, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(29, N'TcTzsEzBU9', N'Maruyama Shino', N'Maruyama Shino', N'Maruyama Shino', N'Nam', '2022-02-12', N'325 State Street', N'838-237-7363', N'6cCQBhboCi', 33, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(30, N'bHFkHyz84x', N'Yuan Xiuying', N'Yuan Xiuying', N'Yuan Xiuying', N'Nam', '2022-02-12', N'5-2-3 Higashi Gotanda, Shinagawa-ku ', N'3-4641-2905', N'iHiz1GucJD', 6, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(31, N'E00i4hdoQr', N'Roy Hayes', N'Roy Hayes', N'Roy Hayes', N'Nu', '2022-02-12', N'160 Jiangnan West Road, Haizhu District', N'130-4243-4716', N'Pr5KQa1WHG', 5, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(32, N'BPFP8mMzdd', N'Han Lu', N'Han Lu', N'Han Lu', N'Nu', '2022-02-12', N'720 Sackville St', N'7899 119779', N'jL66pFrRqo', 28, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(33, N'QGSj5XOZZj', N'Pan Xiaoming', N'Pan Xiaoming', N'Pan Xiaoming', N'Nam', '2022-02-12', N'835 Regent Street', N'(20) 1236 0748', N'cDMg3Ci7wb', 37, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(34, N'iuRokips1x', N'Takada Kaito', N'Takada Kaito', N'Takada Kaito', N'Nam', '2022-02-12', N'541 39 William IV St, Charing Cross', N'5141 650454', N'5ul2YDdIwI', 12, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(35, N'sI40N97cJ0', N'Yamaguchi Mio', N'Yamaguchi Mio', N'Yamaguchi Mio', N'Nam', '2022-02-12', N'651 Bergen St', N'718-426-6336', N'dK0UK8QZVV', 28, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(36, N'7FZgJzenGH', N'Yu Zhennan', N'Yu Zhennan', N'Yu Zhennan', N'Nam', '2022-02-12', N'3-9-17 Gakuenminami', N'74-684-5024', N'GZjKjJ0HdW', 47, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(37, N'JJdCtDZSJn', N'Sato Yota', N'Sato Yota', N'Sato Yota', N'Nam', '2022-02-12', N'5-4-10 Kikusui 3 Jo, Shiroishi Ward,', N'90-9608-5055', N'COsyhZWoqO', 20, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(38, N'R84CIqRBOc', N'Kono Itsuki', N'Kono Itsuki', N'Kono Itsuki', N'Nu', '2022-02-12', N'933 Tianbei 1st Rd, Luohu District', N'199-0353-0236', N'xeJSq6f2NI', 28, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(39, N'QjawXHcO0N', N'Danielle Jackson', N'Danielle Jackson', N'Danielle Jackson', N'Nu', '2022-02-12', N'929 Cyril St, Braunstone Town', N'(116) 858 4827', N'JDe5mdOhlJ', 35, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(40, N'WhVKMCjrwP', N'Liao Wai Han', N'Liao Wai Han', N'Liao Wai Han', N'Nu', '2022-02-12', N'623 Kengmei 15th Alley', N'162-5559-5316', N'RmMUgYuXBZ', 6, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(41, N'7tKEYxww7t', N'Eddie Holmes', N'Eddie Holmes', N'Eddie Holmes', N'Nam', '2022-02-12', N'1-1-5 Deshiro, Nishinari Ward', N'80-0117-5116', N'a1xfudZ6uS', 47, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(42, N'sWQ5g3Vi3Y', N'Hsuan Chung Yin', N'Hsuan Chung Yin', N'Hsuan Chung Yin', N'Nu', '2022-02-12', N'477 Whitehouse Lane, Huntingdon Rd', N'7665 377684', N'L8mbHL180F', 17, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(43, N'hMnJnvYkHs', N'Liu Shihan', N'Liu Shihan', N'Liu Shihan', N'Nam', '2022-02-12', N'344 West Houston Street', N'212-818-3763', N'GlDbl5mgrC', 2, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(44, N'EcbNjtOXKD', N'Harry Carter', N'Harry Carter', N'Harry Carter', N'Nam', '2022-02-12', N'937 Wooster Street', N'212-208-3104', N'p0wTSXl1xe', 44, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(45, N'FMdIYJHQzi', N'Che On Kay', N'Che On Kay', N'Che On Kay', N'Nu', '2022-02-12', N'13-3-15 Toyohira 3 Jo, Toyohira Ward', N'11-855-8720', N'FIzDDaJSrk', 50, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(46, N'0Jb8LJhTcY', N'Kimura Kasumi', N'Kimura Kasumi', N'Kimura Kasumi', N'Nu', '2022-02-12', N'5-2-20 Higashi Gotanda, Shinagawa-ku ', N'3-6372-3465', N'sZ0z1Z91B9', 25, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(47, N'nmMM7iwrv4', N'Uchida Minato', N'Uchida Minato', N'Uchida Minato', N'Nu', '2022-02-12', N'13-3-12 Toyohira 3 Jo, Toyohira Ward', N'11-376-5070', N'8J7XDGcWMS', 34, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(48, N'9fk4WhwnQ6', N'Mo Rui', N'Mo Rui', N'Mo Rui', N'Nam', '2022-02-12', N'902 Fern Street', N'330-233-4998', N'IIipewp5Dh', 24, 1);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(49, N'UXawHFQ844', N'Lu Zhennan', N'Lu Zhennan', N'Lu Zhennan', N'Nam', '2022-02-12', N'233 Jianxiang Rd, Pudong', N'21-9687-7226', N'hvD0ERkT5o', 40, 0);
INSERT INTO NhanVien
(Id, Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCV, TrangThai)
VALUES(50, N'c0h01bBMFM', N'Don Parker', N'Don Parker', N'Don Parker', N'Nam', '2022-02-12', N'5-2-11 Kikusui 3 Jo, Shiroishi Ward', N'11-538-4362', N'eIFHSm6zO2', 50, 1);
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF 
