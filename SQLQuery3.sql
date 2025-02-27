create database DaChe
go
use DaChe
go
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DaChe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DaChe] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DaChe] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DaChe] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DaChe] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DaChe] SET ARITHABORT OFF
GO
ALTER DATABASE [DaChe] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DaChe] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DaChe] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DaChe] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DaChe] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DaChe] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DaChe] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DaChe] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DaChe] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DaChe] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DaChe] SET  READ_WRITE
GO
ALTER DATABASE [DaChe] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DaChe] SET  MULTI_USER
GO
if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'DaChe', @optname = 'db chaining', @optvalue = 'OFF'
 end
GO
USE [DaChe]
GO
/****** Object:  Table [dbo].[用户]    Script Date: 07/04/2019 22:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[用户](
	[编号] [int] IDENTITY(1,1) NOT NULL,
	[用户名] [nvarchar](50) NULL,
	[密码] [nvarchar](50) NULL,
	[姓名] [nvarchar](50) NULL,
	[电话] [nvarchar](50) NULL,
 CONSTRAINT [PK_用户] PRIMARY KEY CLUSTERED 
(
	[编号] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[用户] ON
INSERT [dbo].[用户] ([编号], [用户名], [密码], [姓名], [电话]) VALUES (1, N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[用户] OFF
/****** Object:  Table [dbo].[司机]    Script Date: 07/04/2019 22:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[司机](
	[编码] [int] IDENTITY(1,1) NOT NULL,
	[用户名] [nvarchar](50) NULL,
	[密码] [nvarchar](50) NULL,
	[姓名] [nvarchar](50) NULL,
	[电话] [nvarchar](50) NULL,
	[车牌号] [nvarchar](50) NULL,
 CONSTRAINT [PK_司机] PRIMARY KEY CLUSTERED 
(
	[编码] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[司机] ON
INSERT [dbo].[司机] ([编码], [用户名], [密码], [姓名], [电话], [车牌号]) VALUES (1, N'1', N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[司机] OFF
/****** Object:  Table [dbo].[管理员]    Script Date: 07/04/2019 22:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[管理员](
	[编号] [int] IDENTITY(1,1) NOT NULL,
	[用户名] [nvarchar](50) NULL,
	[密码] [nvarchar](50) NULL,
	[姓名] [nvarchar](50) NULL,
	[电话] [nvarchar](50) NULL,
 CONSTRAINT [PK_管理员] PRIMARY KEY CLUSTERED 
(
	[编号] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[管理员] ON
INSERT [dbo].[管理员] ([编号], [用户名], [密码], [姓名], [电话]) VALUES (2, N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[管理员] OFF
/****** Object:  Table [dbo].[订单]    Script Date: 07/04/2019 22:05:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[订单](
	[订单号] [int] IDENTITY(1,1) NOT NULL,
	[出发地] [nvarchar](50) NULL,
	[目的地] [nvarchar](50) NULL,
	[司机] [nvarchar](50) NULL,
	[订单金额] [nvarchar](50) NULL,
 CONSTRAINT [PK_订单] PRIMARY KEY CLUSTERED 
(
	[订单号] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[订单] ON
INSERT [dbo].[订单] ([订单号], [出发地], [目的地], [司机], [订单金额]) VALUES (1, N'1', N'1', N'123', N'12')
SET IDENTITY_INSERT [dbo].[订单] OFF
