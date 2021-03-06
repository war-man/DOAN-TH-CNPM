USE [master]
GO
/****** Object:  Database [QLHS]    Script Date: 12/07/2020 12:13:55 CH ******/
CREATE DATABASE [QLHS]
 
ALTER DATABASE [QLHS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLHS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLHS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLHS] SET  MULTI_USER 
GO
ALTER DATABASE [QLHS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLHS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLHS] SET QUERY_STORE = OFF
GO
USE [QLHS]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/07/2020 12:13:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](30) NOT NULL,
	[Pass] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[FullName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEM]    Script Date: 12/07/2020 12:13:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEM](
	[MADIEM] [varchar](10) NOT NULL,
	[LOAIDIEM] [nvarchar](20) NOT NULL,
	[MAHS] [int] NOT NULL,
	[MAMONHOC] [varchar](10) NOT NULL,
	[HOCKY] [nvarchar](10) NOT NULL,
	[MALOP] [int] NOT NULL,
	[GIATRIDIEM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 12/07/2020 12:13:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MAHS] [int] IDENTITY(1,1) NOT NULL,
	[MALOP] [int] NOT NULL,
	[HOTEN] [nvarchar](40) NOT NULL,
	[NGAYSINH] [smalldatetime] NOT NULL,
	[GIOITINH] [nvarchar](20) NOT NULL,
	[NOISINH] [nvarchar](40) NOT NULL,
	[TENNGGIAMHO] [nvarchar](40) NOT NULL,
	[SODT] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 12/07/2020 12:13:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [int] IDENTITY(1,1) NOT NULL,
	[TENLOP] [nvarchar](20) NOT NULL,
	[SISO] [int] NOT NULL,
	[TENGV] [nvarchar](50) NOT NULL,
	[KHOI] [nvarchar](20) NOT NULL,
	[TENNAMHOC] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 12/07/2020 12:13:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMONHOC] [varchar](10) NOT NULL,
	[TENMONHOC] [nvarchar](40) NOT NULL,
	[SOTIET] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMONHOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DIEM] ([MADIEM], [LOAIDIEM], [MAHS], [MAMONHOC], [HOCKY], [MALOP], [GIATRIDIEM]) VALUES (N'01', N'Kiểm tra 15 phút', 1, N'TOAN6', N'HK1', 1, 7)
SET IDENTITY_INSERT [dbo].[HOCSINH] ON 

INSERT [dbo].[HOCSINH] ([MAHS], [MALOP], [HOTEN], [NGAYSINH], [GIOITINH], [NOISINH], [TENNGGIAMHO], [SODT]) VALUES (1, 1, N'Nguyễn Minh', CAST(N'2006-04-01T00:00:00' AS SmallDateTime), N'Nam', N'Biên Hòa', N'AD Nhật', N'0213218321')
SET IDENTITY_INSERT [dbo].[HOCSINH] OFF
SET IDENTITY_INSERT [dbo].[LOP] ON 

INSERT [dbo].[LOP] ([MALOP], [TENLOP], [SISO], [TENGV], [KHOI], [TENNAMHOC]) VALUES (1, N'Lớp 6A', 45, N'Võ Minh Quý', N'K6', N'2018-2019')
SET IDENTITY_INSERT [dbo].[LOP] OFF
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET]) VALUES (N'TOAN6', N'Toán Lớp 6', 5)
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_D_HS] FOREIGN KEY([MAHS])
REFERENCES [dbo].[HOCSINH] ([MAHS])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_D_HS]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_D_L] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_D_L]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_D_MH] FOREIGN KEY([MAMONHOC])
REFERENCES [dbo].[MONHOC] ([MAMONHOC])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_D_MH]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HS_L] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HS_L]
GO
/****** Object:  StoredProcedure [dbo].[DeleteClass]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteClass]
@malop int
as 
begin
	delete lop where malop=@malop
end 
GO
/****** Object:  StoredProcedure [dbo].[DeleteHS]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteHS]
@mahs int
as
begin
	delete HOCSINH where MAHS=@mahs
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllClass]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAllClass]
as
begin 
	select*from lop
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllHS]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAllHS]
@malop int
as
begin	
	select mahs,HOCSINH.MALOP,hoten,ngaysinh,gioitinh,noisinh,TENNGGIAMHO,sodt
	from lop,HOCSINH
	where lop.malop=hocsinh.malop and lop.malop=@malop
end
GO
/****** Object:  StoredProcedure [dbo].[InsertNewClass]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertNewClass]
@tenlop nvarchar(20),
@siso int,
@tengv nvarchar(50),
@khoi nvarchar(20),
@tennamhoc nvarchar(20)
as 
begin
	insert into lop values(@tenlop,@siso,@tengv,@khoi,@tennamhoc)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertNewStudent]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertNewStudent]
@malop int,
@hoten nvarchar(40),
@ngaysinh smalldatetime,
@gioitinh nvarchar(20),
@noisinh nvarchar(40),
@tennggiamho nvarchar(40),
@sodt varchar(20)
as
begin
	insert into HOCSINH values (@malop,@hoten,@ngaysinh,@gioitinh,@noisinh,@tennggiamho,@sodt)
end
GO
/****** Object:  StoredProcedure [dbo].[LoginAccount]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LoginAccount]
@username nvarchar(30),
@password nvarchar(30)
as
begin
SELECT FullName, Email
FROM Account
WHERE Username = @username and Pass = @password
end
GO
/****** Object:  StoredProcedure [dbo].[SignUpAccount]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SignUpAccount]
@username varchar(30),
@password varchar(30),
@email	  varchar(30),
@name	  nvarchar(30)
as
begin
insert into Account values (@username, @password, @email, @name)
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateHS]    Script Date: 12/07/2020 12:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateHS]
@mahs int,
@malop int,
@hoten nvarchar(40),
@ngaysinh smalldatetime,
@gioitinh nvarchar(20),
@noisinh nvarchar(40),
@tennggiamho nvarchar(40),
@sodt varchar(20)
as
begin
	update HOCSINH set MALOP=@malop,HOTEN=@hoten,NGAYSINH=@ngaysinh,GIOITINH=@gioitinh,NOISINH=@noisinh,TENNGGIAMHO=@tennggiamho,SODT=@sodt where MAHS=@mahs
end
GO
USE [master]
GO
ALTER DATABASE [QLHS] SET  READ_WRITE 
GO
