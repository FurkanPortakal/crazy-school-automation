USE [master]
GO
/****** Object:  Database [OgrenciOtomasyon]    Script Date: 4.04.2020 22:40:49 ******/
CREATE DATABASE [OgrenciOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OgrenciOtomasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\OgrenciOtomasyon.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OgrenciOtomasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\OgrenciOtomasyon_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OgrenciOtomasyon] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OgrenciOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OgrenciOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [OgrenciOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OgrenciOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OgrenciOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OgrenciOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OgrenciOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OgrenciOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [OgrenciOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OgrenciOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OgrenciOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OgrenciOtomasyon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [OgrenciOtomasyon]
GO
/****** Object:  Table [dbo].[Tbl_Dersler]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Dersler](
	[DersId] [int] IDENTITY(1,1) NOT NULL,
	[DersKodu] [nvarchar](10) NULL,
	[DersAdi] [nvarchar](80) NULL,
 CONSTRAINT [PK_Tbl_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Ogrenci]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ogrenci](
	[OgrenciId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciAdiSoyadi] [nvarchar](70) NULL,
	[TcKimlik] [bigint] NULL,
	[OgrenciNo] [int] NULL,
	[Telefon] [bigint] NULL,
	[Adres] [text] NULL,
	[VeliAdiSoyadi] [nvarchar](70) NULL,
	[VeliTel] [bigint] NULL,
 CONSTRAINT [PK_Tbl_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_OgrenciDers]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_OgrenciDers](
	[OgrenciDersId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciNoId] [int] NOT NULL,
	[OgrenciAdiId] [int] NOT NULL,
	[DersId] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_OgrenciDers] PRIMARY KEY CLUSTERED 
(
	[OgrenciDersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Ogretmen]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ogretmen](
	[OgretmenId] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenAdiSoyadi] [nvarchar](70) NULL,
	[TcKimlik] [bigint] NULL,
	[Tel] [bigint] NULL,
	[Adres] [text] NULL,
 CONSTRAINT [PK_Tbl_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[OgretmenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_OgretmenDers]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_OgretmenDers](
	[OgretmenDersId] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenAdiId] [int] NULL,
	[DersId] [int] NULL,
 CONSTRAINT [PK_Tbl_OgretmenDers] PRIMARY KEY CLUSTERED 
(
	[OgretmenDersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Siniflar]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Siniflar](
	[SinifId] [int] IDENTITY(1,1) NOT NULL,
	[SinifKodu] [nvarchar](10) NULL,
	[OgrenciDersId] [int] NULL,
	[OgretmenDersId] [int] NULL,
 CONSTRAINT [PK_Tbl_Siniflar] PRIMARY KEY CLUSTERED 
(
	[SinifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_User]    Script Date: 4.04.2020 22:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NULL,
	[Password] [nvarchar](16) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_User] ON 

INSERT [dbo].[Tbl_User] ([UserId], [Username], [Password], [Name], [Surname]) VALUES (1, N'hasmettazegul', N'123456', N'Haşmet2', N'Tazegül')
INSERT [dbo].[Tbl_User] ([UserId], [Username], [Password], [Name], [Surname]) VALUES (2, N'ahmet12', N'123456', N'Ahmet', N'Şen')
INSERT [dbo].[Tbl_User] ([UserId], [Username], [Password], [Name], [Surname]) VALUES (3, N'furkan123', N'123456', N'Furkan', N'Portakal')
SET IDENTITY_INSERT [dbo].[Tbl_User] OFF
ALTER TABLE [dbo].[Tbl_OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Dersler] FOREIGN KEY([DersId])
REFERENCES [dbo].[Tbl_Dersler] ([DersId])
GO
ALTER TABLE [dbo].[Tbl_OgrenciDers] CHECK CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Dersler]
GO
ALTER TABLE [dbo].[Tbl_OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Ogrenci] FOREIGN KEY([OgrenciNoId])
REFERENCES [dbo].[Tbl_Ogrenci] ([OgrenciId])
GO
ALTER TABLE [dbo].[Tbl_OgrenciDers] CHECK CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Ogrenci]
GO
ALTER TABLE [dbo].[Tbl_OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Ogrenci1] FOREIGN KEY([OgrenciAdiId])
REFERENCES [dbo].[Tbl_Ogrenci] ([OgrenciId])
GO
ALTER TABLE [dbo].[Tbl_OgrenciDers] CHECK CONSTRAINT [FK_Tbl_OgrenciDers_Tbl_Ogrenci1]
GO
ALTER TABLE [dbo].[Tbl_OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_OgretmenDers_Tbl_Dersler] FOREIGN KEY([DersId])
REFERENCES [dbo].[Tbl_Dersler] ([DersId])
GO
ALTER TABLE [dbo].[Tbl_OgretmenDers] CHECK CONSTRAINT [FK_Tbl_OgretmenDers_Tbl_Dersler]
GO
ALTER TABLE [dbo].[Tbl_OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_OgretmenDers_Tbl_Ogretmen] FOREIGN KEY([OgretmenAdiId])
REFERENCES [dbo].[Tbl_Ogretmen] ([OgretmenId])
GO
ALTER TABLE [dbo].[Tbl_OgretmenDers] CHECK CONSTRAINT [FK_Tbl_OgretmenDers_Tbl_Ogretmen]
GO
ALTER TABLE [dbo].[Tbl_Siniflar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Siniflar_Tbl_OgrenciDers] FOREIGN KEY([OgrenciDersId])
REFERENCES [dbo].[Tbl_OgrenciDers] ([OgrenciDersId])
GO
ALTER TABLE [dbo].[Tbl_Siniflar] CHECK CONSTRAINT [FK_Tbl_Siniflar_Tbl_OgrenciDers]
GO
ALTER TABLE [dbo].[Tbl_Siniflar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Siniflar_Tbl_OgretmenDers] FOREIGN KEY([OgretmenDersId])
REFERENCES [dbo].[Tbl_OgretmenDers] ([OgretmenDersId])
GO
ALTER TABLE [dbo].[Tbl_Siniflar] CHECK CONSTRAINT [FK_Tbl_Siniflar_Tbl_OgretmenDers]
GO
USE [master]
GO
ALTER DATABASE [OgrenciOtomasyon] SET  READ_WRITE 
GO
