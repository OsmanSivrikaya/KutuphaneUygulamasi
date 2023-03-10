USE [db_kutuphane]
GO
/****** Object:  Table [dbo].[Kat]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KatAdi] [nvarchar](50) NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Kat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NULL,
	[Aktifmi] [bit] NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KitapSeriNo] [nvarchar](50) NULL,
	[KitapAdi] [nvarchar](max) NULL,
	[KitapYazari] [nvarchar](max) NULL,
	[KitapSayfaSayisi] [nvarchar](50) NULL,
	[KitapYayinEvi] [nvarchar](max) NULL,
	[KitapBasimYili] [nvarchar](10) NULL,
	[KitapOzeti] [text] NULL,
	[KitapKonusu] [text] NULL,
	[KategoriId] [int] NULL,
	[KitapStok] [int] NULL,
	[KitapResimYolu] [nvarchar](250) NULL,
 CONSTRAINT [PK_Kitap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplik]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KatId] [int] NULL,
	[OdaId] [int] NULL,
	[KitaplikAdi] [nvarchar](50) NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Kitaplik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapRafAra]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapRafAra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KitapId] [int] NULL,
	[RafId] [int] NULL,
 CONSTRAINT [PK_KitapRafAra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[DT] [nvarchar](10) NULL,
	[TC] [nvarchar](11) NULL,
	[Mail] [nvarchar](100) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Adres] [text] NULL,
	[Teliki] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KatId] [int] NULL,
	[OdaAdi] [nvarchar](50) NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Oda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raf]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raf](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KatId] [int] NULL,
	[OdaId] [int] NULL,
	[KitaplikId] [int] NULL,
	[RafAdi] [nvarchar](50) NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Raf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resepsiyon]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resepsiyon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KitapId] [int] NULL,
	[KullaniciId] [int] NULL,
	[SorumluId] [int] NULL,
	[TeslimEdildi] [bit] NULL,
 CONSTRAINT [PK_Resepsiyon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolDto]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolDto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[RolId] [int] NULL,
 CONSTRAINT [PK_RolDto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KitapId] [int] NULL,
	[UserId] [int] NULL,
	[Metin] [nvarchar](500) NULL,
 CONSTRAINT [PK_Yorum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kat] ON 

INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (1, N'Kat 1', 0)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (2, N'Kat 2', 0)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (3, N'Kat 3', 0)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (4, N'Kat 1', 1)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (5, N'Kat 2', 1)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (6, N'Kat 3', 1)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (7, N'Kat 4', 1)
INSERT [dbo].[Kat] ([Id], [KatAdi], [AktifMi]) VALUES (8, N'Kat Deneme', 1)
SET IDENTITY_INSERT [dbo].[Kat] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (3, N'KİŞİSEL GELİŞİM', 1)
INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (5, N'TARİH', 1)
INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (1005, N'DENEME2', 0)
INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (1006, N'Psikoloji', 1)
INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (1007, N'ROMAN', 1)
INSERT [dbo].[Kategori] ([Id], [KategoriAdi], [Aktifmi]) VALUES (1008, N'Psikoloji123', 0)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 

INSERT [dbo].[Kitap] ([Id], [KitapSeriNo], [KitapAdi], [KitapYazari], [KitapSayfaSayisi], [KitapYayinEvi], [KitapBasimYili], [KitapOzeti], [KitapKonusu], [KategoriId], [KitapStok], [KitapResimYolu]) VALUES (2, N'548732', N'O VE BEN', N'NECİP FAZIL KISAKÜREK', N'240', N'Mercan', N'1874', N'Mayhoş bir kitaptır.', N'Keşke güneş kadar güzel ay kadar beyaz olsa ama sadece bir kişide var o', 5, 8, N'/Files/2-2022-12-17 12-55-01.png')
INSERT [dbo].[Kitap] ([Id], [KitapSeriNo], [KitapAdi], [KitapYazari], [KitapSayfaSayisi], [KitapYayinEvi], [KitapBasimYili], [KitapOzeti], [KitapKonusu], [KategoriId], [KitapStok], [KitapResimYolu]) VALUES (1002, N'548732', N'TÜNELDEKİ ÇOCUK', N'Sait Faik Abasıyanık', N'240', N'Mercan', N'1874', N'Mayhoş bir kitaptır.', N'Keşke güneş kadar güzel ay kadar beyaz olsa ama sadece bir kişide var o', 3, 13, N'/Files/1002-2022-12-17 12-56-16.jpg')
INSERT [dbo].[Kitap] ([Id], [KitapSeriNo], [KitapAdi], [KitapYazari], [KitapSayfaSayisi], [KitapYayinEvi], [KitapBasimYili], [KitapOzeti], [KitapKonusu], [KategoriId], [KitapStok], [KitapResimYolu]) VALUES (1003, N'548732', N'NE DUYGUSAL BİR KİTAP', N'Sait Faik', N'240', N'Mercan', N'1874', N'Mayhoş bir kitaptır.', N'Keşke güneş kadar güzel ay kadar beyaz olsa ama sadece bir kişide var o', 3, 13, N'/Files/1003-2022-12-17 12-55-14.jpg')
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitaplik] ON 

INSERT [dbo].[Kitaplik] ([Id], [KatId], [OdaId], [KitaplikAdi], [AktifMi]) VALUES (1, 5, 0, N'Roman', 0)
INSERT [dbo].[Kitaplik] ([Id], [KatId], [OdaId], [KitaplikAdi], [AktifMi]) VALUES (2, 5, 5, N'Romann', 1)
INSERT [dbo].[Kitaplik] ([Id], [KatId], [OdaId], [KitaplikAdi], [AktifMi]) VALUES (3, 8, 6, N'Kitaplık Deneme', 1)
INSERT [dbo].[Kitaplik] ([Id], [KatId], [OdaId], [KitaplikAdi], [AktifMi]) VALUES (4, 7, 4, N'Denme Kitaplik 2', 1)
INSERT [dbo].[Kitaplik] ([Id], [KatId], [OdaId], [KitaplikAdi], [AktifMi]) VALUES (5, 8, 6, N'Kitaplık Deneme2', 1)
SET IDENTITY_INSERT [dbo].[Kitaplik] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([Id], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [DT], [TC], [Mail], [Telefon], [Adres], [Teliki]) VALUES (1, N'admin', N'1234', N'ADMİN', N'ADMİN', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [DT], [TC], [Mail], [Telefon], [Adres], [Teliki]) VALUES (2, NULL, NULL, N'Medine Gül', N'Sivrikaya', N'2002-07-15', N'19378213123', N'medine.mercan@gmail.com', N'0541560866', N'Medine new home ataşehir', N'0541560866')
INSERT [dbo].[Kullanici] ([Id], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [DT], [TC], [Mail], [Telefon], [Adres], [Teliki]) VALUES (3, NULL, NULL, N'Medine Gül', N'Sivrikaya', N'2002-07-15', N'19378213123', N'medine.mercan@gmail.com', N'0541560866', N'Medine new home ataşehir', N'0541560866')
INSERT [dbo].[Kullanici] ([Id], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [DT], [TC], [Mail], [Telefon], [Adres], [Teliki]) VALUES (4, NULL, N'asdasd', N'sadasd', N'asdas', N'2022-12-07', N'123123123', N'dasdasd', N'1231231123', N'asdasdasdasd', N'12312312321')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Oda] ON 

INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (1, 5, N'Oda 5', 0)
INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (2, 4, N'Oda 2', 0)
INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (3, 4, N'Oda 3', 1)
INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (4, 7, N'Oda 8', 1)
INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (5, 5, N'Oda 6', 1)
INSERT [dbo].[Oda] ([Id], [KatId], [OdaAdi], [AktifMi]) VALUES (6, 8, N'Oda Deneme', 1)
SET IDENTITY_INSERT [dbo].[Oda] OFF
GO
SET IDENTITY_INSERT [dbo].[Raf] ON 

INSERT [dbo].[Raf] ([Id], [KatId], [OdaId], [KitaplikId], [RafAdi], [AktifMi]) VALUES (1, 8, 6, 3, N'Deneme 1 Raf', 0)
INSERT [dbo].[Raf] ([Id], [KatId], [OdaId], [KitaplikId], [RafAdi], [AktifMi]) VALUES (2, 8, 6, 3, N'Raf Deneme ', 1)
INSERT [dbo].[Raf] ([Id], [KatId], [OdaId], [KitaplikId], [RafAdi], [AktifMi]) VALUES (3, 8, 6, 3, N'2', 0)
INSERT [dbo].[Raf] ([Id], [KatId], [OdaId], [KitaplikId], [RafAdi], [AktifMi]) VALUES (4, 8, 6, 5, N'Raf Deneme 2', 1)
SET IDENTITY_INSERT [dbo].[Raf] OFF
GO
SET IDENTITY_INSERT [dbo].[Resepsiyon] ON 

INSERT [dbo].[Resepsiyon] ([Id], [KitapId], [KullaniciId], [SorumluId], [TeslimEdildi]) VALUES (6, 2, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[Resepsiyon] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([Id], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[Rol] ([Id], [RolAdi]) VALUES (2, N'Kullanici')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[RolDto] ON 

INSERT [dbo].[RolDto] ([Id], [KullaniciId], [RolId]) VALUES (1, 1, 1)
INSERT [dbo].[RolDto] ([Id], [KullaniciId], [RolId]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[RolDto] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_KategoriEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_KategoriEkle]
(
@Id int null,
@KategoriAdi nvarchar(100),
@Aktifmi bit

)
as 
begin
insert into Kategori (KategoriAdi, Aktifmi  )
 values(@KategoriAdi, @Aktifmi)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KategoriGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_KategoriGuncelle]
(
@Id int null,
@KategoriAdi nvarchar(100),
@Aktifmi bit

)
as 
begin
update Kategori set KategoriAdi = @KategoriAdi, Aktifmi = @Aktifmi
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KatEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_KatEkle]
(
@Id int null,
@KatAdi nvarchar(50),
@AktifMi bit

)
as 
begin
insert into Kat (KatAdi, AktifMi)
 values(@KatAdi, @AktifMi)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KatGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_KatGuncelle]
(
@Id int null,
@KatAdi nvarchar(50),
@AktifMi bit


)
as 
begin
update Kat set KatAdi = @KatAdi, AktifMi = @AktifMi
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapAyrinti]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitapAyrinti]
as
begin
select 
Cast(Kitap.Id as INT) AS Id,
[KitapSeriNo],
[KitapAdi],
[KitapYazari],
[KitapSayfaSayisi],
[KitapYayinEvi],
[KitapBasimYili],
[KitapOzeti],
[KitapKonusu],
[KategoriId],
k.KategoriAdi,
[KitapStok],
[KitapResimYolu],
kra.RafId,
r.RafAdi,
r.KitaplikId,
ki.KitaplikAdi,
r.OdaId,
o.OdaAdi,
r.KatId,
kat.KatAdi
from Kitap 
INNER JOIN Kategori k ON k.Id = Kitap.KategoriId
LEFT JOIN KitapRafAra kra on kra.KitapId = Kitap.Id
LEFT JOIN Raf r on r.Id = kra.RafId
LEFT JOIN Kitaplik ki on ki.Id = r.KitaplikId
LEFT JOIN Oda o on o.Id = r.OdaId
LEFT JOIN Kat on Kat.Id = r.KatId
end
--exec sp_KitapAyrinti
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitapEkle]
(
@Id int null,
@KitapSeriNo nvarchar(50),
@KitapAdi nvarchar(MAX),
@KitapYazari nvarchar(MAX),
@KitapSayfaSayisi nvarchar(50),
@KitapYayinEvi nvarchar(MAX),
@KitapBasimYili nvarchar(10),
@KitapOzeti text,
@KitapKonusu text,
@KategoriId int,
@KitapStok int,
@KitapResimYolu nvarchar(250)
)
as 
begin
insert into Kitap (KitapSeriNo, KitapAdi, KitapYazari, KitapSayfaSayisi, KitapYayinEvi, KitapBasimYili, KitapOzeti, KitapKonusu, KategoriId, KitapResimYolu, KitapStok)
 values(@KitapSeriNo, @KitapAdi, @KitapYazari, @KitapSayfaSayisi, @KitapYayinEvi, @KitapBasimYili, @KitapOzeti, @KitapKonusu, @KategoriId, @KitapResimYolu, @KitapStok)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitapGuncelle]
(
@Id int null,
@KitapSeriNo nvarchar(50),
@KitapAdi nvarchar(MAX),
@KitapYazari nvarchar(MAX),
@KitapSayfaSayisi nvarchar(50),
@KitapYayinEvi nvarchar(MAX),
@KitapBasimYili nvarchar(10),
@KitapOzeti text,
@KitapKonusu text,
@KategoriId int,
@KitapStok int,
@KitapResimYolu nvarchar(250)
)
as 
begin
update Kitap set KitapSeriNo = @KitapSeriNo, KitapAdi = @KitapAdi, KitapYazari = @KitapYazari, KitapSayfaSayisi = @KitapSayfaSayisi, KitapYayinEvi = @KitapYayinEvi, KitapBasimYili = @KitapBasimYili, KitapOzeti = @KitapOzeti, KitapKonusu = @KitapKonusu, KategoriId = @KategoriId, KitapResimYolu = @KitapResimYolu, KitapStok = @KitapStok
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitaplikEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitaplikEkle]
(
@Id int null,
@KatId int,
@OdaId int,
@KitaplikAdi nvarchar(50),
@AktifMi bit

)
as 
begin
insert into Kitaplik (OdaId, KitaplikAdi,AktifMi,KatId)
 values(@OdaId,@KitaplikAdi, @AktifMi,@KatId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitaplikGetirDto]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KitaplikGetirDto]
AS
BEGIN
select ki.Id,ki.KitaplikAdi,ki.OdaId,o.OdaAdi,ki.KatId,k.KatAdi,o.AktifMi from Kitaplik ki
INNER JOIN Kat k ON k.Id = ki.KatId
INNER JOIN Oda o ON o.Id = ki.OdaId
END
--EXEC sp_KitaplikGetirDto
GO
/****** Object:  StoredProcedure [dbo].[sp_KitaplikGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_KitaplikGuncelle]
(
@Id int null,
@KatId int,
@OdaId int,
@KitaplikAdi nvarchar(50),
@AktifMi bit



)
as 
begin
update Kitaplik set OdaId = @OdaId, KitaplikAdi = @KitaplikAdi, AktifMi = @AktifMi, KatId=@KatId
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapRafAraEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitapRafAraEkle]
(
@Id int null,
@KitapId int,
@RafId int
)
as
begin
insert into KitapRafAra (KitapId,RafId) Values(@KitapId,@RafId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapRafAraGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KitapRafAraGuncelle]
(
@Id int null,
@KitapId int,
@RafId int
)
as
begin
update KitapRafAra set RafId = @RafId WHERE KitapId = @KitapId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KullaniciEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_KullaniciEkle]
(
@Id int null,
@KullaniciAdi nvarchar(50),
@Sifre nvarchar(50),
@Isim nvarchar(50),
@Soyisim nvarchar(50),
@DT nvarchar(10),
@TC nvarchar(11),
@Mail nvarchar(100),
@Telefon nvarchar(50),
@Adres text,
@Teliki nvarchar(50)


)
as 
begin
insert into Kullanici (KullaniciAdi, Sifre,Isim,Soyisim,DT,TC,Mail,Telefon,Adres,Teliki  )
 values(@KullaniciAdi, @Sifre,@Isim,@Soyisim,@DT,@TC,@Mail,@Telefon,@Adres,@Teliki )
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_OdaDtoGetir]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_OdaDtoGetir]
AS
BEGIN
select o.Id,o.OdaAdi,o.KatId,k.KatAdi,o.AktifMi from Oda o
INNER JOIN Kat k ON k.Id = o.KatId
END
--EXEC sp_OdaDtoGetir
GO
/****** Object:  StoredProcedure [dbo].[sp_OdaEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_OdaEkle]
(
@Id int null,
@KatId int,
@OdaAdi nvarchar(50),
@AktifMi bit

)
as 
begin
insert into Oda (KatId, OdaAdi,AktifMi)
 values(@KatId,@OdaAdi, @AktifMi)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_OdaGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_OdaGuncelle]
(
@Id int null,
@KatId nvarchar(50),
@OdaAdi nvarchar(50),
@AktifMi bit



)
as 
begin
update Oda set KatId = @KatId, OdaAdi = @OdaAdi, AktifMi = @AktifMi
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RafEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_RafEkle]
(
@Id int null,
@KitaplikId int,
@OdaId int,
@KatId int,
@RafAdi nvarchar(50),
@AktifMi bit

)
as 
begin
insert into Raf (KitaplikId, RafAdi,AktifMi,KatId,OdaId)
 values(@KitaplikId,@RafAdi, @AktifMi,@KatId,@OdaId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RafGetirDto]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_RafGetirDto]
AS
BEGIN
select r.Id,r.RafAdi,r.KitaplikId,ki.KitaplikAdi,r.OdaId,o.OdaAdi,r.KatId,k.KatAdi,r.AktifMi from Raf r
INNER JOIN Kat k ON k.Id = r.KatId
INNER JOIN Oda o ON o.Id = r.OdaId
INNER JOIN Kitaplik ki ON ki.Id = r.KitaplikId
END
--EXEC sp_RafGetirDto
GO
/****** Object:  StoredProcedure [dbo].[sp_RafGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_RafGuncelle]
(
@Id int null,
@KitaplikId int,
@OdaId int,
@KatId int,
@RafAdi nvarchar(50),
@AktifMi bit



)
as 
begin
update Raf set KitaplikId = @KitaplikId, RafAdi = @RafAdi, AktifMi = @AktifMi, OdaId = @OdaId, KatId = @KatId
where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ResepsiyonDto]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ResepsiyonDto]
as
BEGIN
select r.Id,r.KitapId,k.KitapAdi,r.KullaniciId,ku.Isim,ku.Soyisim,ku.TC,r.SorumluId, (select Isim+' '+Soyisim from Kullanici where Id = r.SorumluId) AS Sorumlu from Resepsiyon r
INNER JOIN Kitap k ON k.Id = r.KitapId 
INNER JOIN Kullanici ku ON ku.Id = r.KullaniciId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ResepsiyonEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ResepsiyonEkle]
(
@Id int null,
@KitapId int,
@KullaniciId int,
@SorumluId int,
@TeslimEdildi bit
)
as
BEGIN
INSERT INTO Resepsiyon (KitapId,KullaniciId,SorumluId,TeslimEdildi) values(@KitapId,@KullaniciId,@SorumluId,@TeslimEdildi)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RolDtoEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_RolDtoEkle]
(
@Id int null,
@KullaniciId int,
@RolId int
)
as
begin 
INSERT INTO RolDto (KullaniciId,RolId) VALUES(@KullaniciId,@RolId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_YorumEkle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_YorumEkle]
(
@Id int null,
@KitapId int,
@UserId int,
@Metin nvarchar(500)
)
as 
begin
insert into Yorum (KitapId,UserId,Metin)
 values(@KitapId, @UserId,@Metin)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_YorumGetirDto]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_YorumGetirDto]
as
begin
select y.Id, y.KitapId, k.KitapAdi, y.UserId, ku.Isim+' '+ku.Soyisim AS KullaniciAdi, k.KitapResimYolu, y.Metin  from Yorum y
inner join Kitap k on k.Id = KitapId
inner join Kullanici ku on ku.Id = UserId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_YorumGuncelle]    Script Date: 20.12.2022 22:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_YorumGuncelle]
(
@Id int null,
@KitapId int,
@UserId int,
@Metin nvarchar(500)

)
as 
begin
update Yorum set KitapId=@KitapId,UserId=@UserId,Metin=@Metin
where Id = @Id
end
GO
