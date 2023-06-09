USE [master]
GO
/****** Object:  Database [WuyeProject]    Script Date: 2022/2/8 21:58:57 ******/
CREATE DATABASE [WuyeProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WuyeProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WuyeProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WuyeProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WuyeProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WuyeProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WuyeProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WuyeProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WuyeProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WuyeProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WuyeProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WuyeProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [WuyeProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WuyeProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WuyeProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WuyeProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WuyeProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WuyeProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WuyeProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WuyeProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WuyeProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WuyeProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WuyeProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WuyeProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WuyeProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WuyeProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WuyeProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WuyeProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WuyeProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WuyeProject] SET RECOVERY FULL 
GO
ALTER DATABASE [WuyeProject] SET  MULTI_USER 
GO
ALTER DATABASE [WuyeProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WuyeProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WuyeProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WuyeProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WuyeProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WuyeProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WuyeProject', N'ON'
GO
ALTER DATABASE [WuyeProject] SET QUERY_STORE = OFF
GO
USE [WuyeProject]
GO
/****** Object:  Table [dbo].[w_admin]    Script Date: 2022/2/8 21:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[w_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NOT NULL,
	[pass] [varchar](30) NOT NULL,
	[nickname] [varchar](30) NULL,
	[power] [int] NULL,
	[createtime] [date] NULL,
 CONSTRAINT [PK_w_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[w_room_info]    Script Date: 2022/2/8 21:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[w_room_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[phone] [varchar](16) NOT NULL,
	[link_name] [varchar](10) NULL,
	[stop_car_area] [int] NULL,
	[construct_date] [date] NULL,
	[road_area] [int] NULL,
	[room_area] [int] NULL,
	[lh_area] [int] NULL,
	[room_number] [int] NULL,
	[address] [varchar](50) NOT NULL,
	[remark] [varchar](200) NULL,
 CONSTRAINT [PK_w_room_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[w_system_params]    Script Date: 2022/2/8 21:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[w_system_params](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_w_system_params] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[w_admin] ON 

INSERT [dbo].[w_admin] ([id], [username], [pass], [nickname], [power], [createtime]) VALUES (1, N'admin', N'admin', N'超级牛逼的人', 1, CAST(N'2022-01-06' AS Date))
SET IDENTITY_INSERT [dbo].[w_admin] OFF
GO
SET IDENTITY_INSERT [dbo].[w_room_info] ON 

INSERT [dbo].[w_room_info] ([id], [name], [phone], [link_name], [stop_car_area], [construct_date], [road_area], [room_area], [lh_area], [room_number], [address], [remark]) VALUES (1, N'深圳湾壹号', N'1817898989894', N'张三', 1000, CAST(N'2022-01-18' AS Date), 50, 1222, 10, 20, N'广东省深圳市南山区深圳湾壹号', N'非常贵的小区啊，不是谁都能住的！')
SET IDENTITY_INSERT [dbo].[w_room_info] OFF
GO
SET IDENTITY_INSERT [dbo].[w_system_params] ON 

INSERT [dbo].[w_system_params] ([id], [code], [name], [type]) VALUES (2, N'01', N'住宅222', N'规格信息')
INSERT [dbo].[w_system_params] ([id], [code], [name], [type]) VALUES (3, N'02', N'小区配套', N'功能信息')
INSERT [dbo].[w_system_params] ([id], [code], [name], [type]) VALUES (4, N'03', N'朝北', N'朝向信息')
SET IDENTITY_INSERT [dbo].[w_system_params] OFF
GO
ALTER TABLE [dbo].[w_admin] ADD  CONSTRAINT [DF_w_admin_power]  DEFAULT ((0)) FOR [power]
GO
USE [master]
GO
ALTER DATABASE [WuyeProject] SET  READ_WRITE 
GO
