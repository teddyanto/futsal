USE [master]
GO
/****** Object:  Database [DB_Futsal]    Script Date: 7/21/2021 05:20:34 ******/
CREATE DATABASE [DB_Futsal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Futsal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_Futsal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Futsal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_Futsal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Futsal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Futsal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Futsal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Futsal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Futsal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Futsal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Futsal] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Futsal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_Futsal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Futsal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Futsal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Futsal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Futsal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Futsal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Futsal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Futsal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Futsal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Futsal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Futsal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Futsal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Futsal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Futsal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Futsal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Futsal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Futsal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Futsal] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Futsal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Futsal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Futsal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Futsal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Futsal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Futsal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_Futsal] SET QUERY_STORE = OFF
GO
USE [DB_Futsal]
GO
/****** Object:  Table [dbo].[dt_ajak_tanding]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_ajak_tanding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ajak_tanding] [int] NULL,
	[juara] [int] NULL,
	[skor] [int] NULL,
	[skor2] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_dtAjakTanding] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_FotoLapangan]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_FotoLapangan](
	[id_foto] [int] IDENTITY(1,1) NOT NULL,
	[id_lapangan] [int] NULL,
	[foto] [varchar](max) NULL,
	[caption] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_foto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_jadwal_event]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_jadwal_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_event] [int] NULL,
	[id_tim1] [int] NULL,
	[id_tim2] [int] NULL,
	[id_status] [int] NULL,
	[tanggal] [datetime] NULL,
	[jam] [varchar](50) NULL,
	[skor1] [int] NULL,
	[skor2] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_dtJadwalEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_jadwal_tim]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_jadwal_tim](
	[id_dtJadwalTim] [int] IDENTITY(1,1) NOT NULL,
	[id_tim] [int] NULL,
	[id_merchant] [int] NULL,
	[hari] [varchar](10) NULL,
	[jam] [datetime] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dtJadwalTim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_lapangan_event]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_lapangan_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_event] [int] NULL,
	[id_lapangan] [int] NULL,
	[id_status] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_dtLapanganEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_Merchant]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_Merchant](
	[id_dtmerchant] [int] IDENTITY(1,1) NOT NULL,
	[id_merchant] [int] NULL,
	[id_fasilitas] [int] NULL,
	[jumlah] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dtmerchant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Akun]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Akun](
	[id_akun] [int] IDENTITY(1,1) NOT NULL,
	[id_role] [int] NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_akun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Biaya]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Biaya](
	[id_biaya] [int] IDENTITY(1,1) NOT NULL,
	[nominal] [int] NULL,
	[keterangan] [varchar](100) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__msBiaya__9D970ADFC5667D73] PRIMARY KEY CLUSTERED 
(
	[id_biaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Fasilitas]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Fasilitas](
	[id_fasilitas] [int] IDENTITY(1,1) NOT NULL,
	[fasilitas] [varchar](50) NULL,
	[icon] [varchar](max) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fasilitas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Lapangan]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Lapangan](
	[id_lapangan] [int] IDENTITY(1,1) NOT NULL,
	[id_merchant] [int] NULL,
	[nama] [varchar](50) NULL,
	[tipe_lapangan] [varchar](20) NULL,
	[harga] [int] NULL,
	[harga_penerangan] [int] NULL,
	[panjang_lapangan] [int] NULL,
	[lebar_lapangan] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_lapangan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Merchant]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Merchant](
	[id_merchant] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[alamat] [varchar](100) NULL,
	[telephone] [varchar](15) NULL,
	[narahubung] [varchar](50) NULL,
	[deskripsi] [varchar](max) NULL,
	[rating] [float] NULL,
	[foto] [varchar](max) NULL,
	[banner] [varchar](max) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
	[id_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_merchant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Role]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Status]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Status](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[keterangan] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_msStatus] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_Tim]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_Tim](
	[id_tim] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[nama] [varchar](50) NULL,
	[tgl_berdiri] [date] NULL,
	[privat] [int] NULL,
	[tipe_pemain] [int] NULL,
	[logo] [varchar](max) NULL,
	[banner] [varchar](max) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_User]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_User](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[id_akun] [int] NULL,
	[id_tim] [int] NULL,
	[nama_depan] [varchar](50) NULL,
	[nama_belakang] [varchar](50) NULL,
	[telephone] [varchar](15) NULL,
	[email] [varchar](30) NULL,
	[tanggal_lahir] [date] NULL,
	[jenis_kelamin] [varchar](10) NULL,
	[foto] [varchar](max) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_ajak_tanding]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_ajak_tanding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tim1] [int] NULL,
	[id_tim2] [int] NULL,
	[id_status] [int] NULL,
	[id_lapangan] [int] NULL,
	[notifikasi] [int] NULL,
	[tanggal] [datetime] NULL,
	[jam] [datetime] NULL,
	[alasan] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_trAjakTanding] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_booking_lapangan]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_booking_lapangan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tim] [int] NULL,
	[id_lapangan] [int] NULL,
	[id_status] [int] NULL,
	[notifikasi] [int] NULL,
	[tanggal] [datetime] NULL,
	[jam] [time](7) NULL,
	[durasi] [int] NULL,
	[dp] [int] NULL,
	[sub_harga] [int] NULL,
	[bukti_transfer] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_trBookingLapangan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_daftar_tim]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_daftar_tim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[id_tim] [int] NULL,
	[id_status] [int] NULL,
	[notifikasi] [int] NULL,
	[alasan] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_trDaftarTim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_Event]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_Event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[nama] [varchar](50) NULL,
	[keterangan] [varchar](50) NULL,
	[tanggal_mulai] [datetime] NULL,
	[tanggal_selesai] [datetime] NULL,
	[slot_tim] [int] NULL,
	[narahubung] [varchar](20) NULL,
	[biaya] [int] NULL,
	[telephone] [varchar](50) NULL,
	[hadiah] [varchar](100) NULL,
	[total_hadiah] [int] NULL,
	[tipe] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_teEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_jadwal_lapangan]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_jadwal_lapangan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_lapangan] [int] NULL,
	[id_tim1] [int] NULL,
	[id_tim2] [int] NULL,
	[tanggal] [date] NULL,
	[jam] [time](7) NULL,
	[durasi] [int] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
	[main_bareng] [int] NULL,
 CONSTRAINT [PK_trJadwalLapangan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_main_bareng]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_main_bareng](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tim] [int] NULL,
	[id_user] [int] NULL,
	[id_status] [int] NULL,
	[notifikasi] [int] NULL,
	[alasan] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
	[id_jadwal_lapangan] [int] NULL,
 CONSTRAINT [PK_trMainBareng] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_pelunasan]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_pelunasan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_trbooking] [int] NULL,
	[nominal] [int] NULL,
	[bukti_bayar] [varchar](100) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_trPelunasan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_pendaftaran_merchant]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_pendaftaran_merchant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_merchant] [int] NULL,
	[id_biaya] [int] NULL,
	[id_status] [int] NULL,
	[notifikasi] [int] NULL,
	[nominal] [int] NULL,
	[bukti_transfer] [varchar](50) NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_trPendafataranMerchant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_Review]    Script Date: 7/21/2021 05:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_merchant] [int] NULL,
	[id_user] [int] NULL,
	[review] [varchar](100) NULL,
	[rating] [float] NULL,
	[creaby] [varchar](50) NULL,
	[creadate] [datetime] NULL,
	[modiby] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[status] [int] NULL,
	[id_trbooking] [int] NULL,
 CONSTRAINT [PK_trReview] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_ajak_tanding] ON 

INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 0, 3, 3, N'Ivan', CAST(N'2021-07-20T18:20:34.230' AS DateTime), N'Ivan', CAST(N'2021-07-20T18:20:34.230' AS DateTime), 1)
INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 3, 4, 2, 3, N'putri', CAST(N'2021-07-20T18:31:17.310' AS DateTime), N'putri', CAST(N'2021-07-20T18:31:17.310' AS DateTime), 1)
INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 2, 0, 0, 0, N'Teddy', CAST(N'2021-07-20T18:32:32.697' AS DateTime), N'Teddy', CAST(N'2021-07-20T18:32:32.697' AS DateTime), 1)
INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 4, 1, 4, 2, N'Firda', CAST(N'2021-07-20T18:33:07.853' AS DateTime), N'Firda', CAST(N'2021-07-20T18:33:07.853' AS DateTime), 1)
INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 5, 0, 0, 0, N'Ivan', CAST(N'2021-07-20T18:34:02.063' AS DateTime), N'Ivan', CAST(N'2021-07-20T18:34:02.063' AS DateTime), 1)
INSERT [dbo].[dt_ajak_tanding] ([id], [id_ajak_tanding], [juara], [skor], [skor2], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 6, 4, 3, 2, N'putri', CAST(N'2021-07-20T18:37:28.043' AS DateTime), N'putri', CAST(N'2021-07-20T18:37:28.043' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[dt_ajak_tanding] OFF
GO
SET IDENTITY_INSERT [dbo].[dt_FotoLapangan] ON 

INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'l20210720153025.jpg', N'Lapangan rumput', N'adit@gmail.com', CAST(N'2021-07-20T15:30:25.670' AS DateTime), N'', CAST(N'2021-07-20T15:30:25.670' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 2, N'l20210720161506.jpg', N'Lapangan rumput sintetis', N'adit@gmail.com', CAST(N'2021-07-20T16:15:06.183' AS DateTime), N'', CAST(N'2021-07-20T16:15:06.183' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 5, N'l20210720162835.jpg', N'Lapangan Sintetis', N'syamsul@gmail.com', CAST(N'2021-07-20T16:28:35.533' AS DateTime), N'', CAST(N'2021-07-20T16:28:35.537' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 6, N'l20210720164502.jpg', N'Tampak Depan', N'sam@gmail.com', CAST(N'2021-07-20T16:45:02.057' AS DateTime), N'', CAST(N'2021-07-20T16:45:02.057' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 3, N'l20210720164603.jpg', N'Tampak Kiri', N'adit@gmail.com', CAST(N'2021-07-20T16:46:03.623' AS DateTime), N'', CAST(N'2021-07-20T16:46:03.623' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 4, N'l20210720164621.jpg', N'Tampak Depan', N'adit@gmail.com', CAST(N'2021-07-20T16:46:21.407' AS DateTime), N'', CAST(N'2021-07-20T16:46:21.407' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 1, N'l20210720165016.jpg', N'Tampak Kiri', N'adit@gmail.com', CAST(N'2021-07-20T16:50:16.273' AS DateTime), N'', CAST(N'2021-07-20T16:50:16.273' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[dt_FotoLapangan] OFF
GO
SET IDENTITY_INSERT [dbo].[dt_Merchant] ON 

INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 1, 3, N'adit@gmail.com', CAST(N'2021-07-20T15:25:31.073' AS DateTime), N'', CAST(N'2021-07-20T15:25:31.073' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 1, 2, 2, N'adit@gmail.com', CAST(N'2021-07-20T15:25:40.977' AS DateTime), N'', CAST(N'2021-07-20T15:25:40.977' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 1, 4, 5, N'adit@gmail.com', CAST(N'2021-07-20T15:25:50.617' AS DateTime), N'', CAST(N'2021-07-20T15:25:50.617' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 5, 3, 2, N'syamsul@gmail.com', CAST(N'2021-07-20T16:29:01.147' AS DateTime), N'', CAST(N'2021-07-20T16:29:01.147' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 5, 4, 4, N'syamsul@gmail.com', CAST(N'2021-07-20T16:29:12.760' AS DateTime), N'', CAST(N'2021-07-20T16:29:12.760' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[dt_Merchant] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Akun] ON 

INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'admin', N'12345', N'ivtepemalang@gmail.com', CAST(N'2021-07-20T13:51:49.613' AS DateTime), N'', CAST(N'2021-07-20T13:51:49.613' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 4, N'tim1', N'12345', N'Teddy@gmail.com', CAST(N'2021-07-20T13:55:16.777' AS DateTime), N'', CAST(N'2021-07-20T13:55:16.777' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 4, N'tim2', N'12345', N'fsyah8912@gmail.com', CAST(N'2021-07-20T14:05:28.303' AS DateTime), N'', CAST(N'2021-07-20T14:05:28.303' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 4, N'tim3', N'12345', N'firda@gmail.com', CAST(N'2021-07-20T14:07:31.863' AS DateTime), N'', CAST(N'2021-07-20T14:07:31.863' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 4, N'tim4', N'12345', N'putri@gmailcom', CAST(N'2021-07-20T14:09:42.807' AS DateTime), N'', CAST(N'2021-07-20T14:09:42.807' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 2, N'merchant', N'12345', N'adit@gmail.com', CAST(N'2021-07-20T14:11:56.460' AS DateTime), N'', CAST(N'2021-07-20T14:11:56.460' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 2, N'merchant2', N'12345', N'syamsul@gmail.com', CAST(N'2021-07-20T14:42:42.810' AS DateTime), N'', CAST(N'2021-07-20T14:42:42.810' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, 2, N'player1', N'12345', N'marchelo@gmail.com', CAST(N'2021-07-20T15:05:49.730' AS DateTime), N'', CAST(N'2021-07-20T15:05:49.730' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, 2, N'player2', N'12345', N'navas@gmail.com', CAST(N'2021-07-20T15:06:20.063' AS DateTime), N'', CAST(N'2021-07-20T15:06:20.063' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, 2, N'player3', N'12345', N'james@gmail.com', CAST(N'2021-07-20T15:07:04.493' AS DateTime), N'', CAST(N'2021-07-20T15:07:04.493' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (11, 2, N'player4', N'12345', N'ramos@gmail.com', CAST(N'2021-07-20T15:07:41.273' AS DateTime), N'', CAST(N'2021-07-20T15:07:41.273' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (12, 2, N'player5', N'12345', N'varane@gmail.com', CAST(N'2021-07-20T15:08:15.050' AS DateTime), N'', CAST(N'2021-07-20T15:08:15.050' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (13, 2, N'player6', N'12345', N'carvajal@gmail.com', CAST(N'2021-07-20T15:08:55.513' AS DateTime), N'', CAST(N'2021-07-20T15:08:55.513' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (14, 2, N'player7', N'12345', N'modrig@gmail.com', CAST(N'2021-07-20T15:09:46.467' AS DateTime), N'', CAST(N'2021-07-20T15:09:46.467' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (15, 2, N'player8', N'12345', N'benzema@gmail.com', CAST(N'2021-07-20T15:10:45.220' AS DateTime), N'', CAST(N'2021-07-20T15:10:45.220' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (16, 2, N'player9', N'12345', N'bale@gmail.com', CAST(N'2021-07-20T15:11:19.700' AS DateTime), N'', CAST(N'2021-07-20T15:11:19.700' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (17, 2, N'player10', N'12345', N'hazard@gmail.com', CAST(N'2021-07-20T15:12:03.247' AS DateTime), N'', CAST(N'2021-07-20T15:12:03.247' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (18, 2, N'player11', N'12345', N'buffon@gmail.com', CAST(N'2021-07-20T15:12:34.490' AS DateTime), N'', CAST(N'2021-07-20T15:12:34.490' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (19, 2, N'player12', N'12345', N'sandro@gmail.com', CAST(N'2021-07-20T15:13:12.473' AS DateTime), N'', CAST(N'2021-07-20T15:13:12.473' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (20, 2, N'player13', N'12345', N'bonuci@gmail.com', CAST(N'2021-07-20T15:13:50.460' AS DateTime), N'', CAST(N'2021-07-20T15:13:50.460' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (21, 2, N'player14', N'12345', N'chelini@gmail.com', CAST(N'2021-07-20T15:14:34.747' AS DateTime), N'', CAST(N'2021-07-20T15:14:34.747' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (22, 2, N'player15', N'12345', N'can@gmail.com', CAST(N'2021-07-20T15:15:08.553' AS DateTime), N'', CAST(N'2021-07-20T15:15:08.553' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (23, 2, N'player16', N'12345', N'pjanic@gmail.com', CAST(N'2021-07-20T15:16:07.447' AS DateTime), N'', CAST(N'2021-07-20T15:16:07.447' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (24, 2, N'player17', N'12345', N'ronaldo@gmail.com', CAST(N'2021-07-20T15:16:41.273' AS DateTime), N'', CAST(N'2021-07-20T15:16:41.273' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (25, 2, N'player18', N'12345', N'mesi@gmail.com', CAST(N'2021-07-20T15:17:20.157' AS DateTime), N'', CAST(N'2021-07-20T15:17:20.157' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (26, 2, N'player19', N'12345', N'ibra@gmail.com', CAST(N'2021-07-20T15:17:59.810' AS DateTime), N'', CAST(N'2021-07-20T15:17:59.810' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (27, 2, N'player20', N'12345', N'neymasrt@gmail.com', CAST(N'2021-07-20T15:18:43.917' AS DateTime), N'', CAST(N'2021-07-20T15:18:43.917' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (28, 2, N'player21', N'12345', N'morata@gmail.com', CAST(N'2021-07-20T15:21:15.680' AS DateTime), N'', CAST(N'2021-07-20T15:21:15.680' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (29, 2, N'merchant3', N'12345', N'sam@gmail.com', CAST(N'2021-07-20T16:36:02.370' AS DateTime), N'', CAST(N'2021-07-20T16:36:02.370' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Akun] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Biaya] ON 

INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 50000, N'30/1 bulan/lewandowski', N'admin', CAST(N'2021-06-23T06:06:12.950' AS DateTime), N'', CAST(N'2021-06-23T06:06:12.950' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 140000, N'90/3 bulan/neymar', N'admin', CAST(N'2021-06-23T06:12:15.493' AS DateTime), N'yang login saat ini', CAST(N'2021-06-26T06:28:34.823' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 260000, N'180/6 bulan/ronaldo', N'admin', CAST(N'2021-06-24T22:02:44.023' AS DateTime), N'', CAST(N'2021-06-24T22:02:44.023' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 500000, N'360/12 bulan/messi', N'admin', CAST(N'2021-06-24T22:14:48.283' AS DateTime), N'yang login saat ini', CAST(N'2021-06-26T06:25:02.837' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Biaya] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Fasilitas] ON 

INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'TOILET', N'fas fa-toilet', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-22T06:17:02.543' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:12:46.200' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'PARKING AREA', N'fas fa-parking', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-22T06:27:55.740' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:12:53.713' AS DateTime), 0)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'WIFI AREA', N'fa fa-wifi', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T04:55:13.323' AS DateTime), N'', CAST(N'2021-06-25T04:55:13.323' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'FREE WATER', N'fas fa-water', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T05:08:07.653' AS DateTime), N'', CAST(N'2021-06-25T05:08:07.653' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, N'FREE MONEY', N'fas fa-money', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T05:10:04.630' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:10:20.213' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Fasilitas] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Lapangan] ON 

INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'Lapangan Real Madrid', N'Rumput', 50000, 60000, 10, 30, N'Teddy yang login', CAST(N'2021-07-20T15:24:45.540' AS DateTime), N'', CAST(N'2021-07-20T15:24:45.540' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 1, N'Lapangan Barcelona', N'Rumput sintetis', 40000, 50000, 30, 10, N'Teddy yang login', CAST(N'2021-07-20T16:10:06.453' AS DateTime), N'', CAST(N'2021-07-20T16:10:06.453' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 1, N'Lapangan Valencia', N'Keramik', 30000, 35000, 10, 30, N'Teddy yang login', CAST(N'2021-07-20T16:15:43.433' AS DateTime), N'', CAST(N'2021-07-20T16:15:43.433' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 1, N'Lapangan Juventus', N'Keramik', 60000, 650000, 30, 10, N'Teddy yang login', CAST(N'2021-07-20T16:21:12.160' AS DateTime), N'', CAST(N'2021-07-20T16:21:12.160' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 5, N'Lapangan Indonesia', N'Rumput Sintetis', 45000, 50000, 30, 10, N'Teddy yang login', CAST(N'2021-07-20T16:26:37.777' AS DateTime), N'', CAST(N'2021-07-20T16:26:37.777' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 6, N'Lapangan Persib Bandung', N'Rumput Sintetis', 50000, 75000, 30, 10, N'Teddy yang login', CAST(N'2021-07-20T16:44:38.183' AS DateTime), N'', CAST(N'2021-07-20T16:44:38.183' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Lapangan] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Merchant] ON 

INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (1, N'Futsal Kauman Comal', N'Jl. comal no.50 deket masjid', N'0877885065', N'Adit', N'Menyediakan layanan futsal', 4, N'f20210720142130.png', N'b20210720142130.jpg', N'adit@gmail.com', CAST(N'2021-07-20T14:21:30.893' AS DateTime), N'System', CAST(N'2021-07-20T18:25:08.477' AS DateTime), 1, 6)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (5, N'Futsal Sahaja', N'Jl. akasia no 50 Pamutih', N'0877885065', N'Ivan', N'meyediakan fasilitas lengkap', 0, N'f20210720145607.jpg', N'b20210720145607.png', N'syamsul@gmail.com', CAST(N'2021-07-20T14:56:07.050' AS DateTime), N'', CAST(N'2021-07-20T14:56:07.050' AS DateTime), 1, 7)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (6, N'Futsal Gandu', N'Jl. Gandu no.54 Ulujami, Pemalang', N'08763244234', N'firda', N'Good lah', 0, N'f20210720164021.png', N'b20210720164021.jpg', N'sam@gmail.com', CAST(N'2021-07-20T16:40:21.853' AS DateTime), N'', CAST(N'2021-07-20T16:40:21.853' AS DateTime), 1, 29)
SET IDENTITY_INSERT [dbo].[ms_Merchant] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Role] ON 

INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'admin', N'admin', CAST(N'2021-06-18T10:53:49.103' AS DateTime), N'admin', CAST(N'2021-06-25T05:39:32.033' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'user', N'admin', CAST(N'2021-06-24T07:47:04.700' AS DateTime), N'admin', CAST(N'2021-06-25T05:32:41.390' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'manager merchant', N'admin', CAST(N'2021-06-24T13:42:35.867' AS DateTime), N'admin', CAST(N'2021-06-25T05:32:48.560' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'manager tim', N'admin', CAST(N'2021-06-25T05:36:15.910' AS DateTime), N'admin', CAST(N'2021-06-25T05:36:15.910' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Status] ON 

INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'Waiting For Payment', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:48.480' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'Being Processed', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'Confirmed', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'Rejected', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, N'Paid Off', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, N'Transaction Failed', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, N'Transaction Not Complete', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, N'Payment Processed', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, N'Transaction Complete', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, N'Cancel', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_Tim] ON 

INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 2, N'Soccer Club', CAST(N'2021-07-02' AS Date), 0, 5, N'f20210720140135.jpg', N'f20210720140135.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-07-20T14:01:35.893' AS DateTime), N'', CAST(N'2021-07-20T14:01:35.893' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 3, N'Pamutih Club', CAST(N'2019-01-20' AS Date), 0, 3, N'f20210720140634.jpg', N'f20210720140634.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-07-20T14:06:34.200' AS DateTime), N'', CAST(N'2021-07-20T14:06:34.200' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 4, N'Santuy Club', CAST(N'2021-07-01' AS Date), 0, 4, N'f20210720140840.png', N'f20210720140840.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-07-20T14:08:40.073' AS DateTime), N'', CAST(N'2021-07-20T14:08:40.073' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 5, N'Lascar Club', CAST(N'2021-07-10' AS Date), 0, 2, N'f20210720141052.png', N'f20210720141052.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-07-20T14:10:52.023' AS DateTime), N'', CAST(N'2021-07-20T14:10:52.023' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Tim] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_User] ON 

INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, NULL, N'admin', N'futsal', N'0823111111', N'ivtepemalang@gmail.com', CAST(N'2021-07-01' AS Date), N'L', N'', N'ivtepemalang@gmail.com', CAST(N'2021-07-20T13:51:49.703' AS DateTime), N'', CAST(N'2021-07-20T13:51:49.703' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 2, 1, N'Teddy', N'IJ', N'082322321074', N'Teddy@gmail.com', CAST(N'2021-07-21' AS Date), N'L', N'', N'Teddy@gmail.com', CAST(N'2021-07-20T13:55:16.803' AS DateTime), N'', CAST(N'2021-07-20T13:55:16.803' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 3, 2, N'Ivan', N'Firmansyah', N'085702348077', N'fsyah8912@gmail.com', CAST(N'2021-07-21' AS Date), N'L', N'', N'fsyah8912@gmail.com', CAST(N'2021-07-20T14:05:28.357' AS DateTime), N'', CAST(N'2021-07-20T14:05:28.357' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 4, 3, N'Firda', N'Pratiwi', N'0877885065', N'firda@gmail.com', CAST(N'2021-07-03' AS Date), N'P', N'', N'firda@gmail.com', CAST(N'2021-07-20T14:07:32.040' AS DateTime), N'', CAST(N'2021-07-20T14:07:32.040' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 5, 4, N'putri', N'ramdani', N'08228834535', N'putri@gmailcom', CAST(N'2021-07-15' AS Date), N'P', N'', N'putri@gmailcom', CAST(N'2021-07-20T14:09:42.830' AS DateTime), N'', CAST(N'2021-07-20T14:09:42.830' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 6, NULL, N'Adit', N'Prasetyo', N'08677676767', N'adit@gmail.com', CAST(N'2021-07-21' AS Date), N'L', N'', N'adit@gmail.com', CAST(N'2021-07-20T14:11:56.480' AS DateTime), N'', CAST(N'2021-07-20T14:11:56.480' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 7, NULL, N'syamsul', N'ramadani', N'0802349530', N'syamsul@gmail.com', CAST(N'2021-07-05' AS Date), N'L', N'', N'syamsul@gmail.com', CAST(N'2021-07-20T14:42:42.840' AS DateTime), N'', CAST(N'2021-07-20T14:42:42.840' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, 8, NULL, N'marcelo', N'12', N'08236728364', N'marchelo@gmail.com', CAST(N'2021-07-02' AS Date), N'L', N'', N'marchelo@gmail.com', CAST(N'2021-07-20T15:05:49.797' AS DateTime), N'', CAST(N'2021-07-20T15:05:49.797' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, 9, NULL, N'navas', N'1', N'08324824762', N'navas@gmail.com', CAST(N'2021-07-08' AS Date), N'L', N'', N'navas@gmail.com', CAST(N'2021-07-20T15:06:20.083' AS DateTime), N'', CAST(N'2021-07-20T15:06:20.083' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, 10, NULL, N'james', N'10', N'083246432763', N'james@gmail.com', CAST(N'2021-07-20' AS Date), N'L', N'', N'james@gmail.com', CAST(N'2021-07-20T15:07:04.507' AS DateTime), N'', CAST(N'2021-07-20T15:07:04.507' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (11, 11, NULL, N'ramos', N'4', N'09874347398', N'ramos@gmail.com', CAST(N'2021-07-07' AS Date), N'L', N'', N'ramos@gmail.com', CAST(N'2021-07-20T15:07:41.287' AS DateTime), N'', CAST(N'2021-07-20T15:07:41.287' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (12, 12, NULL, N'varane', N'5', N'084386546834', N'varane@gmail.com', CAST(N'2021-07-07' AS Date), N'L', N'', N'varane@gmail.com', CAST(N'2021-07-20T15:08:15.063' AS DateTime), N'', CAST(N'2021-07-20T15:08:15.063' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (13, 13, NULL, N'carvajal', N'3', N'0348732635', N'carvajal@gmail.com', CAST(N'2021-07-06' AS Date), N'L', N'', N'carvajal@gmail.com', CAST(N'2021-07-20T15:08:55.527' AS DateTime), N'', CAST(N'2021-07-20T15:08:55.527' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (14, 14, NULL, N'modric', N'10', N'078935347538', N'modrig@gmail.com', CAST(N'2021-07-15' AS Date), N'L', N'', N'modrig@gmail.com', CAST(N'2021-07-20T15:09:46.477' AS DateTime), N'', CAST(N'2021-07-20T15:09:46.477' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (15, 15, NULL, N'benzema', N'9', N'083287428376', N'benzema@gmail.com', CAST(N'2021-07-07' AS Date), N'L', N'', N'benzema@gmail.com', CAST(N'2021-07-20T15:10:45.240' AS DateTime), N'', CAST(N'2021-07-20T15:10:45.240' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (16, 16, NULL, N'bale', N'11', N'082348626472', N'bale@gmail.com', CAST(N'2021-06-29' AS Date), N'L', N'', N'bale@gmail.com', CAST(N'2021-07-20T15:11:19.720' AS DateTime), N'', CAST(N'2021-07-20T15:11:19.720' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (17, 17, NULL, N'hazhaerd', N'10', N'083276426432', N'hazard@gmail.com', CAST(N'2021-07-10' AS Date), N'L', N'', N'hazard@gmail.com', CAST(N'2021-07-20T15:12:03.260' AS DateTime), N'', CAST(N'2021-07-20T15:12:03.260' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (18, 18, NULL, N'buffon', N'1', N'082386237864', N'buffon@gmail.com', CAST(N'2021-07-04' AS Date), N'L', N'', N'buffon@gmail.com', CAST(N'2021-07-20T15:12:34.523' AS DateTime), N'', CAST(N'2021-07-20T15:12:34.523' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (19, 19, NULL, N'alex sandro', N'2', N'08342346754', N'sandro@gmail.com', CAST(N'2021-07-07' AS Date), N'L', N'', N'sandro@gmail.com', CAST(N'2021-07-20T15:13:12.490' AS DateTime), N'', CAST(N'2021-07-20T15:13:12.490' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (20, 20, NULL, N'bonuci', N'3', N'082384682736', N'bonuci@gmail.com', CAST(N'2021-07-13' AS Date), N'L', N'', N'bonuci@gmail.com', CAST(N'2021-07-20T15:13:50.473' AS DateTime), N'', CAST(N'2021-07-20T15:13:50.473' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (21, 21, NULL, N'chelini', N'9', N'0832387462', N'chelini@gmail.com', CAST(N'2021-07-06' AS Date), N'L', N'', N'chelini@gmail.com', CAST(N'2021-07-20T15:14:34.773' AS DateTime), N'', CAST(N'2021-07-20T15:14:34.773' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (22, 22, NULL, N'cancelo', N'2', N'0843264274324', N'can@gmail.com', CAST(N'2021-07-06' AS Date), N'L', N'', N'can@gmail.com', CAST(N'2021-07-20T15:15:08.560' AS DateTime), N'', CAST(N'2021-07-20T15:15:08.560' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (23, 23, NULL, N'pjanic', N'10', N'042346287324', N'pjanic@gmail.com', CAST(N'2021-07-15' AS Date), N'L', N'', N'pjanic@gmail.com', CAST(N'2021-07-20T15:16:07.460' AS DateTime), N'', CAST(N'2021-07-20T15:16:07.460' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (24, 24, NULL, N'ronaldo', N'7', N'083298423746', N'ronaldo@gmail.com', CAST(N'2021-07-01' AS Date), N'L', N'', N'ronaldo@gmail.com', CAST(N'2021-07-20T15:16:41.320' AS DateTime), N'', CAST(N'2021-07-20T15:16:41.320' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (25, 25, NULL, N'messi', N'10', N'083207389432', N'mesi@gmail.com', CAST(N'2021-07-10' AS Date), N'L', N'', N'mesi@gmail.com', CAST(N'2021-07-20T15:17:20.170' AS DateTime), N'', CAST(N'2021-07-20T15:17:20.170' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (26, 26, NULL, N'ibrahimovic', N'9', N'08323452342', N'ibra@gmail.com', CAST(N'2021-07-20' AS Date), N'L', N'', N'ibra@gmail.com', CAST(N'2021-07-20T15:17:59.827' AS DateTime), N'', CAST(N'2021-07-20T15:17:59.827' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (27, 27, NULL, N'neymar', N'10', N'0848234683264', N'neymasrt@gmail.com', CAST(N'2021-07-20' AS Date), N'L', N'', N'neymasrt@gmail.com', CAST(N'2021-07-20T15:18:43.930' AS DateTime), N'', CAST(N'2021-07-20T15:18:43.930' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (28, 28, NULL, N'morata', N'7', N'08932423462', N'morata@gmail.com', CAST(N'2021-07-09' AS Date), N'L', N'', N'morata@gmail.com', CAST(N'2021-07-20T15:21:15.847' AS DateTime), N'', CAST(N'2021-07-20T15:21:15.847' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (29, 29, NULL, N'samodra', N'sam', N'08342874343', N'sam@gmail.com', CAST(N'2021-07-08' AS Date), N'L', N'', N'sam@gmail.com', CAST(N'2021-07-20T16:36:02.400' AS DateTime), N'', CAST(N'2021-07-20T16:36:02.400' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_ajak_tanding] ON 

INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 2, 3, 2, 0, CAST(N'2021-07-23T00:00:00.000' AS DateTime), CAST(N'1970-01-01T20:00:00.000' AS DateTime), N'Hub 08570234923', N'Teddy', CAST(N'2021-07-20T17:06:10.990' AS DateTime), N'', CAST(N'2021-07-20T17:06:10.990' AS DateTime), 1)
INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 4, 1, 3, 5, 0, CAST(N'2021-07-22T00:00:00.000' AS DateTime), CAST(N'1970-01-01T18:00:00.000' AS DateTime), N'Hub 08324583508', N'putri', CAST(N'2021-07-20T18:30:24.210' AS DateTime), N'', CAST(N'2021-07-20T18:30:24.210' AS DateTime), 1)
INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 4, 2, 3, 6, 0, CAST(N'2021-07-31T00:00:00.000' AS DateTime), CAST(N'1970-01-01T22:00:00.000' AS DateTime), N'Mari main bareng', N'putri', CAST(N'2021-07-20T18:30:52.130' AS DateTime), N'', CAST(N'2021-07-20T18:30:52.130' AS DateTime), 1)
INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 1, 3, 3, 2, 0, CAST(N'2021-07-30T00:00:00.000' AS DateTime), CAST(N'1970-01-01T03:00:00.000' AS DateTime), N'gas ayuqq', N'Teddy', CAST(N'2021-07-20T18:32:19.913' AS DateTime), N'', CAST(N'2021-07-20T18:32:19.913' AS DateTime), 1)
INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 3, 2, 3, 6, 0, CAST(N'2021-07-15T00:00:00.000' AS DateTime), CAST(N'1970-01-01T18:00:00.000' AS DateTime), N'yuk', N'Firda', CAST(N'2021-07-20T18:33:26.107' AS DateTime), N'', CAST(N'2021-07-20T18:33:26.107' AS DateTime), 1)
INSERT [dbo].[tr_ajak_tanding] ([id], [id_tim1], [id_tim2], [id_status], [id_lapangan], [notifikasi], [tanggal], [jam], [alasan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 2, 4, 3, 5, 0, CAST(N'2021-07-24T00:00:00.000' AS DateTime), CAST(N'1970-01-01T18:00:00.000' AS DateTime), N'hayoq', N'Ivan', CAST(N'2021-07-20T18:36:42.390' AS DateTime), N'', CAST(N'2021-07-20T18:36:42.390' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_ajak_tanding] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_booking_lapangan] ON 

INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 2, 5, 0, CAST(N'2021-07-23T00:00:00.000' AS DateTime), CAST(N'20:00:00' AS Time), 1, 20000, 40000, N'f20210720182136.jpg', N'fsyah8912@gmail.com', CAST(N'2021-07-20T18:20:34.270' AS DateTime), N'adit@gmail.com', CAST(N'2021-07-20T18:25:08.370' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 3, 6, 3, 0, CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 25000, 50000, N'f20210720182847.jpg', N'firda@gmail.com', CAST(N'2021-07-20T18:28:38.040' AS DateTime), N'sam@gmail.com', CAST(N'2021-07-20T18:29:11.963' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 4, 6, 3, 0, CAST(N'2021-07-31T00:00:00.000' AS DateTime), CAST(N'22:00:00' AS Time), 1, 25000, 50000, N'f20210720183142.jpg', N'putri@gmailcom', CAST(N'2021-07-20T18:31:17.327' AS DateTime), N'sam@gmail.com', CAST(N'2021-07-20T18:35:03.900' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 4, 5, 3, 0, CAST(N'2021-07-22T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 22500, 45000, N'f20210720183719.jpg', N'Teddy@gmail.com', CAST(N'2021-07-20T18:32:32.710' AS DateTime), N'syamsul@gmail.com', CAST(N'2021-07-20T18:38:29.387' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 1, 2, 3, 0, CAST(N'2021-07-30T00:00:00.000' AS DateTime), CAST(N'03:00:00' AS Time), 1, 25000, 40000, N'f20210720183552.jpg', N'firda@gmail.com', CAST(N'2021-07-20T18:33:07.857' AS DateTime), N'adit@gmail.com', CAST(N'2021-07-20T18:38:08.837' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 3, 6, 3, 0, CAST(N'2021-07-15T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 25000, 50000, N'f20210720183531.jpg', N'fsyah8912@gmail.com', CAST(N'2021-07-20T18:34:02.067' AS DateTime), N'sam@gmail.com', CAST(N'2021-07-20T18:38:53.580' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 2, 5, 3, 0, CAST(N'2021-07-24T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 22500, 45000, N'f20210720183749.jpg', N'putri@gmailcom', CAST(N'2021-07-20T18:37:28.057' AS DateTime), N'syamsul@gmail.com', CAST(N'2021-07-20T18:38:31.377' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, 1, 6, 3, 0, CAST(N'2021-07-23T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 25000, 50000, N'f20210720185419.jpg', N'Teddy@gmail.com', CAST(N'2021-07-20T18:54:09.767' AS DateTime), N'sam@gmail.com', CAST(N'2021-07-20T18:54:45.273' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, 2, 5, 3, 0, CAST(N'2021-07-31T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 22500, 45000, N'f20210720185601.jpg', N'fsyah8912@gmail.com', CAST(N'2021-07-20T18:55:52.793' AS DateTime), N'syamsul@gmail.com', CAST(N'2021-07-20T18:56:22.013' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, 3, 1, 3, 0, CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), 1, 25000, 50000, N'f20210720185801.jpg', N'firda@gmail.com', CAST(N'2021-07-20T18:57:53.237' AS DateTime), N'adit@gmail.com', CAST(N'2021-07-20T18:58:23.760' AS DateTime), 1)
INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (11, 3, 4, 3, 0, CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'19:00:00' AS Time), 1, 30000, 60000, N'f20210720190014.jpg', N'firda@gmail.com', CAST(N'2021-07-20T19:00:04.493' AS DateTime), N'adit@gmail.com', CAST(N'2021-07-20T19:00:30.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_booking_lapangan] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_jadwal_lapangan] ON 

INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (1, 2, 1, 2, CAST(N'2021-07-23' AS Date), CAST(N'20:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:23:02.640' AS DateTime), N'', CAST(N'2021-07-20T18:23:02.640' AS DateTime), 2, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (2, 6, 3, 3, CAST(N'2021-07-20' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:29:11.980' AS DateTime), N'', CAST(N'2021-07-20T18:29:11.980' AS DateTime), 1, 1)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (3, 6, 4, 4, CAST(N'2021-07-31' AS Date), CAST(N'22:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:35:03.917' AS DateTime), N'', CAST(N'2021-07-20T18:35:03.917' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (4, 2, 1, 3, CAST(N'2021-07-30' AS Date), CAST(N'03:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:38:08.847' AS DateTime), N'', CAST(N'2021-07-20T18:38:08.847' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (5, 5, 4, 1, CAST(N'2021-07-22' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:38:29.397' AS DateTime), N'', CAST(N'2021-07-20T18:38:29.397' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (6, 5, 2, 4, CAST(N'2021-07-24' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:38:31.390' AS DateTime), N'', CAST(N'2021-07-20T18:38:31.390' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (7, 6, 3, 2, CAST(N'2021-07-15' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:38:53.593' AS DateTime), N'', CAST(N'2021-07-20T18:38:53.593' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (8, 6, 1, 1, CAST(N'2021-07-23' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:54:45.300' AS DateTime), N'', CAST(N'2021-07-20T18:54:45.300' AS DateTime), 1, 0)
INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status], [main_bareng]) VALUES (9, 5, 2, 2, CAST(N'2021-07-31' AS Date), CAST(N'18:00:00' AS Time), 1, N'System', CAST(N'2021-07-20T18:56:22.030' AS DateTime), N'', CAST(N'2021-07-20T18:56:22.030' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[tr_jadwal_lapangan] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_pelunasan] ON 

INSERT [dbo].[tr_pelunasan] ([id], [id_trbooking], [nominal], [bukti_bayar], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 20000, N'f20210720182427.jpg', N'Teddy@gmail.com', CAST(N'2021-07-20T18:24:27.057' AS DateTime), N'', CAST(N'2021-07-20T18:24:27.057' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_pelunasan] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_pendaftaran_merchant] ON 

INSERT [dbo].[tr_pendaftaran_merchant] ([id], [id_merchant], [id_biaya], [id_status], [notifikasi], [nominal], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, 3, 5, 0, 260000, N'f20210720145100.jpg', N'adit@gmail.com', CAST(N'2021-07-20T14:21:30.970' AS DateTime), N'ivtepemalang@gmail.com', CAST(N'2021-07-20T14:51:00.260' AS DateTime), 1)
INSERT [dbo].[tr_pendaftaran_merchant] ([id], [id_merchant], [id_biaya], [id_status], [notifikasi], [nominal], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 5, 3, 3, 0, 260000, N'f20210720150134.jpg', N'syamsul@gmail.com', CAST(N'2021-07-20T14:56:07.100' AS DateTime), N'ivtepemalang@gmail.com', CAST(N'2021-07-20T15:01:58.700' AS DateTime), 1)
INSERT [dbo].[tr_pendaftaran_merchant] ([id], [id_merchant], [id_biaya], [id_status], [notifikasi], [nominal], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 6, 4, 3, 0, 500000, N'f20210720164052.jpg', N'sam@gmail.com', CAST(N'2021-07-20T16:40:21.900' AS DateTime), N'ivtepemalang@gmail.com', CAST(N'2021-07-20T16:43:36.587' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_pendaftaran_merchant] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_Review] ON 

INSERT [dbo].[tr_Review] ([id], [id_merchant], [id_user], [review], [rating], [creaby], [creadate], [modiby], [modidate], [status], [id_trbooking]) VALUES (1, 1, 2, N'Good mantap', 4, N'Teddy@gmail.com', CAST(N'2021-07-20T18:24:27.133' AS DateTime), N'', CAST(N'2021-07-20T18:24:27.133' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[tr_Review] OFF
GO
USE [master]
GO
ALTER DATABASE [DB_Futsal] SET  READ_WRITE 
GO
