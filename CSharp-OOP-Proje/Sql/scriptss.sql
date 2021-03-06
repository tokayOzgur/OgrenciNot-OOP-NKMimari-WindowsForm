USE [master]
GO
/****** Object:  Database [DBTestKatman]    Script Date: 28.09.2021 14:03:20 ******/
CREATE DATABASE [DBTestKatman]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBTestKatman', FILENAME = N'C:\Users\azder\DBTestKatman.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBTestKatman_log', FILENAME = N'C:\Users\azder\DBTestKatman_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBTestKatman] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBTestKatman].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBTestKatman] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBTestKatman] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBTestKatman] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBTestKatman] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBTestKatman] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBTestKatman] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBTestKatman] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBTestKatman] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBTestKatman] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBTestKatman] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBTestKatman] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBTestKatman] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBTestKatman] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBTestKatman] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBTestKatman] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBTestKatman] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBTestKatman] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBTestKatman] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBTestKatman] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBTestKatman] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBTestKatman] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBTestKatman] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBTestKatman] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBTestKatman] SET  MULTI_USER 
GO
ALTER DATABASE [DBTestKatman] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBTestKatman] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBTestKatman] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBTestKatman] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBTestKatman] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBTestKatman] SET QUERY_STORE = OFF
GO
USE [DBTestKatman]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DBTestKatman]
GO
/****** Object:  Table [dbo].[Kulup]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kulup](
	[klpId] [tinyint] IDENTITY(1,1) NOT NULL,
	[klpAd] [varchar](20) NULL,
	[klpAciklama] [varchar](200) NULL,
 CONSTRAINT [PK_Kulup] PRIMARY KEY CLUSTERED 
(
	[klpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notlar]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notlar](
	[notOgrId] [smallint] NOT NULL,
	[notSinav1] [tinyint] NULL,
	[notSinav2] [tinyint] NULL,
	[notSinav3] [tinyint] NULL,
	[notProje] [tinyint] NULL,
	[notOrtalama] [decimal](18, 2) NULL,
	[notDurum] [bit] NULL,
 CONSTRAINT [PK_Notlar] PRIMARY KEY CLUSTERED 
(
	[notOgrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[ogrId] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrAd] [varchar](20) NULL,
	[ogrSoyad] [varchar](30) NULL,
	[ogrFotograf] [varchar](50) NULL,
	[ogrKulupId] [tinyint] NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[ogrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kulup] ON 

INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (1, N'Kütüphane', NULL)
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (2, N'Trafik', NULL)
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (3, N'Saglik', NULL)
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (4, N'Çevre', NULL)
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (5, N'Bilisim', NULL)
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (6, N'Teknoloji', N'asdfjasdkljgkadsljgkjadsgkjadskghuasdfjkfghadsghuargkjasdhueaerhgkjadshgjkarhkjghahauewrgja')
INSERT [dbo].[Kulup] ([klpId], [klpAd], [klpAciklama]) VALUES (17, N'Yesilay', N'Dogayi sevme ve yesillendirme kulubü.')
SET IDENTITY_INSERT [dbo].[Kulup] OFF
GO
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (1, 90, 98, 90, 0, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (2, 45, 65, 75, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (3, 60, 56, 82, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (4, 85, 96, 45, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (5, 75, 85, 46, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (6, 91, 85, 65, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (7, 65, 85, 74, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (8, 75, 65, 27, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (11, 0, 0, 0, 0, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Notlar] ([notOgrId], [notSinav1], [notSinav2], [notSinav3], [notProje], [notOrtalama], [notDurum]) VALUES (111, 56, 40, 60, 55, CAST(0.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 

INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (1, N'Özgür', N'Tokay', N'Test', 1)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (2, N'Barbara', N'Palvin', N'Test', 1)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (3, N'Türkan', N'Soray', N'Test', 2)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (4, N'Jason', N'Mamoa', N'Test', 2)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (5, N'Jennifer', N'Aniston', N'Test', 3)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (6, N'Jennifer', N'Lawrence', N'Test', 4)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (7, N'Angelina', N'Jolie', N'Test', 3)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (8, N'Megan', N'Fox', N'Test', 4)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (9, N'Stella', N'Maxwel', N'Test', 5)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (10, N'Tylan', N'Blondeu', N'Test', 5)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (11, N'BARIS ', N'CAYLAN', N'test', 2)
INSERT [dbo].[Ogrenci] ([ogrId], [ogrAd], [ogrSoyad], [ogrFotograf], [ogrKulupId]) VALUES (111, N'ÖZGÜRS', N'TOKAY', N'test', 1)
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notSinav1]  DEFAULT ((0)) FOR [notSinav1]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notSinav2]  DEFAULT ((0)) FOR [notSinav2]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notSinav3]  DEFAULT ((0)) FOR [notSinav3]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notProje]  DEFAULT ((0)) FOR [notProje]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notOrtalama]  DEFAULT ((0)) FOR [notOrtalama]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_notDurum]  DEFAULT ((0)) FOR [notDurum]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Ogrenci] FOREIGN KEY([notOgrId])
REFERENCES [dbo].[Ogrenci] ([ogrId])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Ogrenci]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Kulup] FOREIGN KEY([ogrKulupId])
REFERENCES [dbo].[Kulup] ([klpId])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Kulup]
GO
/****** Object:  StoredProcedure [dbo].[KulupEkle]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

--create procedure OgrenciSil
--@id int
--as
--delete from Ogrenci where ogrId=@id


-- Kulupler

--create procedure KulupListesi
--as 
--select * from Kulup

create procedure [dbo].[KulupEkle]
@Ad varchar(20),
@Aciklama varchar(200)
as
insert into Kulup (klpAd,klpAciklama) 
values(@Ad,@Aciklama)
GO
/****** Object:  StoredProcedure [dbo].[KulupGuncelle]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

--create procedure OgrenciSil
--@id int
--as
--delete from Ogrenci where ogrId=@id


-- Kulupler

--create procedure KulupListesi
--as 
--select * from Kulup

--create procedure KulupEkle
--@Ad varchar(20),
--@Aciklama varchar(200)
--as
--insert into Kulup (klpAd,klpAciklama) 
--values(@Ad,@Aciklama)

create procedure [dbo].[KulupGuncelle]
@Ad varchar(20),
@Aciklama varchar(200),
@id tinyint
as
update Kulup 
set
klpAd=@Ad, klpAciklama=@Aciklama
where
klpId=@id
GO
/****** Object:  StoredProcedure [dbo].[KulupListesi]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

--create procedure OgrenciSil
--@id int
--as
--delete from Ogrenci where ogrId=@id


-- Kulupler

create procedure [dbo].[KulupListesi]
as 
select * from Kulup
GO
/****** Object:  StoredProcedure [dbo].[KulupSil]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

--create procedure OgrenciSil
--@id int
--as
--delete from Ogrenci where ogrId=@id


-- Kulupler

--create procedure KulupListesi
--as 
--select * from Kulup

--create procedure KulupEkle
--@Ad varchar(20),
--@Aciklama varchar(200)
--as
--insert into Kulup (klpAd,klpAciklama) 
--values(@Ad,@Aciklama)

--create procedure KulupGuncelle
--@Ad varchar(20),
--@Aciklama varchar(200),
--@id tinyint
--as
--update Kulup 
--set
--klpAd=@Ad, klpAciklama=@Aciklama
--where
--klpId=@id


create procedure [dbo].[KulupSil]
@id tinyint
as
delete from Kulup where klpId=@id
GO
/****** Object:  StoredProcedure [dbo].[NotGuncelle]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------

create proc [dbo].[NotGuncelle]
@notOgrId smallint,
@notSinav1 tinyint,
@notSinav2 tinyint,
@notSinav3 tinyint,
@notProje tinyint,@notOrtalama decimal(18,2),
@notDurum bit
as
update Notlar set notSinav1 = @notSinav1, notSinav2=@notSinav2, notSinav3=@notSinav3,
notProje=@notProje,notDurum=@notDurum
where
notOgrId=@notOgrId
GO
/****** Object:  StoredProcedure [dbo].[NotListesi]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NotListesi]
as
select notOgrId,ogrAd,ogrSoyad, notSinav1,notSinav2,notSinav3,notProje,notOrtalama,notDurum 
from Notlar inner join Ogrenci
on Ogrenci.ogrId=Notlar.notOgrId
GO
/****** Object:  StoredProcedure [dbo].[OgrenciEkle]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

create procedure [dbo].[OgrenciEkle]
@Ad varchar(20),
@Soyad varchar(30),
@Fotograf varchar(50),
@KulupId smallint
as
insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
values(@Ad,@Soyad,@Fotograf,@KulupId)
GO
/****** Object:  StoredProcedure [dbo].[OgrenciGuncelle]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

CREATE procedure [dbo].[OgrenciGuncelle]
@ad varchar(20),
@soyad varchar(30),
@fotograf varchar(50),
@kulupId smallint,
@id int
as
update Ogrenci set ogrAd=@ad, ogrSoyad=@soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
where
ogrId=@id
GO
/****** Object:  StoredProcedure [dbo].[OgrenciListesi]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[OgrenciListesi]
as
Select * from Ogrenci
GO
/****** Object:  StoredProcedure [dbo].[OgrenciSil]    Script Date: 28.09.2021 14:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

create procedure [dbo].[OgrenciSil]
@id int
as
delete from Ogrenci where ogrId=@id
GO
USE [master]
GO
ALTER DATABASE [DBTestKatman] SET  READ_WRITE 
GO
