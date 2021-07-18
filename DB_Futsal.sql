USE [master]
GO
/****** Object:  Database [DB_Futsal]    Script Date: 18/07/2021 17:14:58 ******/
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
ALTER DATABASE [DB_Futsal] SET QUERY_STORE = OFF
GO
USE [DB_Futsal]
GO
/****** Object:  Table [dbo].[dt_ajak_tanding]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[dt_FotoLapangan]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[dt_jadwal_event]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[dt_jadwal_tim]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[dt_lapangan_event]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[dt_Merchant]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Akun]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Biaya]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Fasilitas]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Lapangan]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Merchant]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Role]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Status]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_Tim]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[ms_User]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_ajak_tanding]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_booking_lapangan]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_daftar_tim]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_Event]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_jadwal_lapangan]    Script Date: 18/07/2021 17:14:58 ******/
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
 CONSTRAINT [PK_trJadwalLapangan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_main_bareng]    Script Date: 18/07/2021 17:14:58 ******/
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
 CONSTRAINT [PK_trMainBareng] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_pelunasan]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_pendaftaran_merchant]    Script Date: 18/07/2021 17:14:58 ******/
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
/****** Object:  Table [dbo].[tr_Review]    Script Date: 18/07/2021 17:14:58 ******/
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
SET IDENTITY_INSERT [dbo].[dt_FotoLapangan] ON 

INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'l20210630111559.jpg', N'Lapangan aja', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-30T11:15:59.017' AS DateTime), N'', CAST(N'2021-06-30T11:15:59.017' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 1, N'l20210630111606.jpg', N'apa ya', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-30T11:16:06.107' AS DateTime), N'', CAST(N'2021-06-30T11:16:06.107' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 2, N'l20210702161255.jpg', N'123', N'atpl@gmail.com', CAST(N'2021-07-02T16:12:55.113' AS DateTime), N'', CAST(N'2021-07-02T16:12:55.113' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 2, N'l20210702161955.jpg', N'123', N'atpl@gmail.com', CAST(N'2021-07-02T16:19:55.023' AS DateTime), N'', CAST(N'2021-07-02T16:19:55.023' AS DateTime), 1)
INSERT [dbo].[dt_FotoLapangan] ([id_foto], [id_lapangan], [foto], [caption], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 3, N'l20210702162347.jpg', N'apa ya', N'atpl@gmail.com', CAST(N'2021-07-02T16:23:47.990' AS DateTime), N'', CAST(N'2021-07-02T16:23:47.990' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[dt_FotoLapangan] OFF
SET IDENTITY_INSERT [dbo].[dt_Merchant] ON 

INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 4, 1, 3, N'Teddy yang login', CAST(N'2021-06-25T18:08:36.473' AS DateTime), N'', CAST(N'2021-06-25T18:08:36.473' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 8, 1, 2, NULL, NULL, N'atpl@gmail.com', CAST(N'2021-07-03T08:09:10.483' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 8, 2, 1, N'atpl@gmail.com', CAST(N'2021-07-03T08:11:00.653' AS DateTime), N'', CAST(N'2021-07-03T08:11:00.653' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 8, 5, 5, N'atpl@gmail.com', CAST(N'2021-07-03T08:11:07.870' AS DateTime), N'', CAST(N'2021-07-03T08:11:07.870' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 8, 4, 10, N'atpl@gmail.com', CAST(N'2021-07-03T08:11:17.790' AS DateTime), N'', CAST(N'2021-07-03T08:11:17.790' AS DateTime), 1)
INSERT [dbo].[dt_Merchant] ([id_dtmerchant], [id_merchant], [id_fasilitas], [jumlah], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 8, 3, 2, N'atpl@gmail.com', CAST(N'2021-07-03T08:11:25.350' AS DateTime), N'', CAST(N'2021-07-03T08:11:25.350' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[dt_Merchant] OFF
SET IDENTITY_INSERT [dbo].[ms_Akun] ON 

INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'admin', N'123', N'ivan', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Yang login sekarang', CAST(N'2021-06-23T10:18:03.800' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 1, N'ivansyah', N'halo halo', N'Muhamad Ivan', CAST(N'2021-06-23T08:46:29.763' AS DateTime), N'Yang login sekarang', CAST(N'2021-06-23T08:57:35.443' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 1, N'kokoko', N'1234', N'user', CAST(N'2021-06-24T07:47:04.680' AS DateTime), N'', CAST(N'2021-06-24T07:47:04.680' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 1, N'fsdfs', N'123,1234', N'user', CAST(N'2021-06-24T13:42:35.837' AS DateTime), N'', CAST(N'2021-06-24T13:42:35.837' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, 1, N'Ivan', N'pamutih12,pamutih12', N'user', CAST(N'2021-06-24T15:30:47.480' AS DateTime), N'', CAST(N'2021-06-24T15:30:47.480' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 1, N'wqe', N'12', N'user', CAST(N'2021-06-25T21:45:59.677' AS DateTime), N'', CAST(N'2021-06-25T21:45:59.677' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 1, N'firju', N'1234', N'user', CAST(N'2021-06-26T09:56:04.033' AS DateTime), N'', CAST(N'2021-06-26T09:56:04.033' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, 3, N'merchant', N'123', N'user', CAST(N'2021-06-30T09:14:42.943' AS DateTime), N'atpasdl@gmail.com', CAST(N'2021-07-11T10:44:52.800' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (11, 4, N'tim', N'123', N'user', CAST(N'2021-07-12T22:10:19.190' AS DateTime), N'', CAST(N'2021-07-12T22:10:19.190' AS DateTime), 1)
INSERT [dbo].[ms_Akun] ([id_akun], [id_role], [username], [password], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (12, 2, N'apakek', N'123', N'atplotonxxom@yahoo.co.id', CAST(N'2021-07-17T05:40:02.703' AS DateTime), N'', CAST(N'2021-07-17T05:40:02.703' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Akun] OFF
SET IDENTITY_INSERT [dbo].[ms_Biaya] ON 

INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 50000, N'30/1 bulan/lewandowski', N'admin', CAST(N'2021-06-23T06:06:12.950' AS DateTime), N'', CAST(N'2021-06-23T06:06:12.950' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 140000, N'90/3 bulan/neymar', N'admin', CAST(N'2021-06-23T06:12:15.493' AS DateTime), N'yang login saat ini', CAST(N'2021-06-26T06:28:34.823' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 260000, N'180/6 bulan/ronaldo', N'admin', CAST(N'2021-06-24T22:02:44.023' AS DateTime), N'', CAST(N'2021-06-24T22:02:44.023' AS DateTime), 1)
INSERT [dbo].[ms_Biaya] ([id_biaya], [nominal], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 500000, N'360/12 bulan/messi', N'admin', CAST(N'2021-06-24T22:14:48.283' AS DateTime), N'yang login saat ini', CAST(N'2021-06-26T06:25:02.837' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Biaya] OFF
SET IDENTITY_INSERT [dbo].[ms_Fasilitas] ON 

INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'TOILET', N'fas fa-toilet', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-22T06:17:02.543' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:12:46.200' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'PARKING AREA', N'fas fa-parking', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-22T06:27:55.740' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:12:53.713' AS DateTime), 0)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'WIFI AREA', N'fa fa-wifi', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T04:55:13.323' AS DateTime), N'', CAST(N'2021-06-25T04:55:13.323' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'FREE WATER', N'fas fa-water', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T05:08:07.653' AS DateTime), N'', CAST(N'2021-06-25T05:08:07.653' AS DateTime), 1)
INSERT [dbo].[ms_Fasilitas] ([id_fasilitas], [fasilitas], [icon], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, N'FREE MONEY', N'fas fa-money', N'Ivan(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T05:10:04.630' AS DateTime), N'yang login saat ini', CAST(N'2021-06-25T05:10:20.213' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Fasilitas] OFF
SET IDENTITY_INSERT [dbo].[ms_Lapangan] ON 

INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 8, N'Lapangan 21', N'Indoor', 30000, 40000, 30, 20, N'Teddy yang login', CAST(N'2021-06-30T11:14:20.437' AS DateTime), N'atpl@gmail.com', CAST(N'2021-07-01T14:47:47.667' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 8, N'Lapangan 2', N'Grass', 30000, 45000, 30, 25, N'Teddy yang login', CAST(N'2021-07-01T14:00:59.887' AS DateTime), N'atpl@gmail.com', CAST(N'2021-07-01T15:51:40.927' AS DateTime), 1)
INSERT [dbo].[ms_Lapangan] ([id_lapangan], [id_merchant], [nama], [tipe_lapangan], [harga], [harga_penerangan], [panjang_lapangan], [lebar_lapangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 8, N'Lapangan 3', N'Rock', 25000, 33000, 40, 25, N'Teddy yang login', CAST(N'2021-07-01T14:02:54.590' AS DateTime), N'', CAST(N'2021-07-01T14:02:54.590' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Lapangan] OFF
SET IDENTITY_INSERT [dbo].[ms_Merchant] ON 

INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (3, N'Futsal Sahaja', N'Pemalang', N'085702348077', N'Ivan', N'Pamutih', 3, N'f20210623103341.png', N'b20210623103341.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-23T07:58:33.940' AS DateTime), N'yang login sekarang', CAST(N'2021-06-23T10:33:41.577' AS DateTime), 0, 1)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (4, N'Futsal Aquare', N'Ds.Ulujami', N'085702348077', N'Firman', N'bersih', 3, N'f20210625171714.png', N'b20210625171714.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T17:17:14.137' AS DateTime), N'', CAST(N'2021-06-25T17:17:14.137' AS DateTime), 0, 1)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (5, N'NIAT', N'Kauman comal pemalang jawa tengah', N'0891235123', N'Teddy', N'Apa ya gak ada aha', 3, N'f20210630013332.jpg', N'b20210630013332.jpg', N'fsyah8912@gmail.com', CAST(N'2021-06-30T01:33:32.157' AS DateTime), N'', CAST(N'2021-06-30T01:33:32.157' AS DateTime), 0, 1)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (6, N'NAIT', N'Kauman comal pemalang jawa tengah', N'089560652388', N'Teddy', N'a', 3, N'f20210630013537.jpg', N'b20210630013537.jpg', N'fsyah8912@gmail.com', CAST(N'2021-06-30T01:35:37.883' AS DateTime), N'', CAST(N'2021-06-30T01:35:37.883' AS DateTime), 0, 1)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (7, N'NAIT', N'Kauman comal pemalang jawa tengah', N'089560652388', N'Teddy', N'a', 3, N'f20210630013653.jpg', N'b20210630013653.jpg', N'fsyah8912@gmail.com', CAST(N'2021-06-30T01:36:53.093' AS DateTime), N'', CAST(N'2021-06-30T01:36:53.093' AS DateTime), 0, 7)
INSERT [dbo].[ms_Merchant] ([id_merchant], [nama], [alamat], [telephone], [narahubung], [deskripsi], [rating], [foto], [banner], [creaby], [creadate], [modiby], [modidate], [status], [id_user]) VALUES (8, N'Merchant Q123', N'Kauman', N'0895476123', N'Ivam', N'Ini adalah merchant', 3, N'f20210701124818.jpg', N'b20210630092039.jpg', N'atpl@gmail.com', CAST(N'2021-06-30T09:20:39.520' AS DateTime), N'yang login sekarang', CAST(N'2021-07-03T09:21:48.530' AS DateTime), 1, 8)
SET IDENTITY_INSERT [dbo].[ms_Merchant] OFF
SET IDENTITY_INSERT [dbo].[ms_Role] ON 

INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'admin', N'admin', CAST(N'2021-06-18T10:53:49.103' AS DateTime), N'admin', CAST(N'2021-06-25T05:39:32.033' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'user', N'admin', CAST(N'2021-06-24T07:47:04.700' AS DateTime), N'admin', CAST(N'2021-06-25T05:32:41.390' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'manager merchant', N'admin', CAST(N'2021-06-24T13:42:35.867' AS DateTime), N'admin', CAST(N'2021-06-25T05:32:48.560' AS DateTime), 1)
INSERT [dbo].[ms_Role] ([id_role], [role], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'manager tim', N'admin', CAST(N'2021-06-25T05:36:15.910' AS DateTime), N'admin', CAST(N'2021-06-25T05:36:15.910' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Role] OFF
SET IDENTITY_INSERT [dbo].[ms_Status] ON 

INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, N'Menunggu Pembayaran', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:48.480' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, N'Sedang Diproses', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, N'Terkonfirmasi', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, N'Ditolak', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, N'Lunas', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, N'Transaksi Gagal', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, N'Transaksi Tidak Selesai', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, N'Pelunasan Diproses', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
INSERT [dbo].[ms_Status] ([id_status], [keterangan], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, N'Transaksi Selesai', N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), N'admin', CAST(N'2021-06-25T16:30:23.650' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Status] OFF
SET IDENTITY_INSERT [dbo].[ms_Tim] ON 

INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, N'Pamutih FC', CAST(N'2021-06-23' AS Date), 1, 1, N'f20210623082407.png', N'b20210623082407.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-23T08:24:07.073' AS DateTime), N'', CAST(N'2021-06-23T08:24:07.073' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 2, N'Futsal Sahaja', CAST(N'2021-06-23' AS Date), 1, 1, N'f20210623082454.png', N'b20210623082454.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-23T08:24:54.450' AS DateTime), N'', CAST(N'2021-06-23T08:24:54.450' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, 3, N'Pamutih FC', CAST(N'2021-06-23' AS Date), 1, 2, N'f20210623083353.png', N'b20210623083353.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-23T08:33:53.700' AS DateTime), N'', CAST(N'2021-06-23T08:33:53.700' AS DateTime), 1)
INSERT [dbo].[ms_Tim] ([id_tim], [id_user], [nama], [tgl_berdiri], [privat], [tipe_pemain], [logo], [banner], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, 9, N'TIM MANTAP', CAST(N'2021-07-12' AS Date), 1, 5, N'f20210712224251.jpg', N'b20210712224251.jpg', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-07-12T22:42:51.587' AS DateTime), N'', CAST(N'2021-07-12T22:42:51.587' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_Tim] OFF
SET IDENTITY_INSERT [dbo].[ms_User] ON 

INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 1, NULL, N'NIKolah', N'Firmansyah', N'085702348077', N'0320190018@polman.astra.ac.id', CAST(N'2021-06-23' AS Date), NULL, N'f20210625043933.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-25T04:39:33.903' AS DateTime), N'', CAST(N'2021-06-25T04:39:33.903' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, NULL, NULL, N'Karyawan', N'Firmansyah', N'085702348077', N'sss@gmail.com', CAST(N'2021-06-23' AS Date), N'L', N'f20210623123201.png', N'Teddy(harusnya ambil nama yang bikin)', CAST(N'2021-06-23T12:32:01.797' AS DateTime), N'', CAST(N'2021-06-23T12:32:01.797' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (3, NULL, NULL, N'ko', N'ju', N'085702348077', N'fsyah8912@gmail.com', CAST(N'2021-06-17' AS Date), N'L', N'', N'user', CAST(N'2021-06-24T07:47:04.520' AS DateTime), N'', CAST(N'2021-06-24T07:47:04.520' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (4, NULL, NULL, N'Ivansyah', N'ya gimana', N'085702348077', N'fsyah8912@gmail.com', CAST(N'2021-06-02' AS Date), N'P', N'', N'user', CAST(N'2021-06-24T13:42:35.077' AS DateTime), N'', CAST(N'2021-06-24T13:42:35.077' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (5, NULL, NULL, N'Muhamad', N'Ivan', N'082322321074', N'muhiavan@gmail.com', CAST(N'2021-06-25' AS Date), N'L', N'', N'user', CAST(N'2021-06-24T15:30:47.330' AS DateTime), N'', CAST(N'2021-06-24T15:30:47.330' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, NULL, NULL, N'y', N'w', N'2', N'asddf', CAST(N'2021-06-16' AS Date), N'P', N'', N'user', CAST(N'2021-06-25T21:45:59.570' AS DateTime), N'', CAST(N'2021-06-25T21:45:59.570' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (7, 7, NULL, N'huhuhu', N'kukuku', N'085702348077', N'fsyah8912@gmail.com', CAST(N'2021-06-03' AS Date), N'L', N'', N'user', CAST(N'2021-06-26T09:56:04.187' AS DateTime), N'', CAST(N'2021-06-26T09:56:04.187' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (8, 8, NULL, N'Pemilik ', N'merchant', N'0895606663', N'atpasdl@gmail.com', CAST(N'2000-09-20' AS Date), N'L', N'f20210715095819.jpg', N'user', CAST(N'2021-06-30T09:14:43.177' AS DateTime), N'atpasdl@gmail.com', CAST(N'2021-07-15T10:02:15.340' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, 11, 4, N'Pemilik', N'Tim', N'089560652388', N'aku@gmail.com', CAST(N'2000-07-11' AS Date), N'L', N'f20210715095838.jpg', N'user', CAST(N'2021-07-12T22:10:19.333' AS DateTime), N'aku@gmail.com', CAST(N'2021-07-15T09:58:38.523' AS DateTime), 1)
INSERT [dbo].[ms_User] ([id_user], [id_akun], [id_tim], [nama_depan], [nama_belakang], [telephone], [email], [tanggal_lahir], [jenis_kelamin], [foto], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (10, 12, NULL, N'Pemilik', N'IJasd', N'089560652388', N'atplotonxxom@yahoo.co.id', CAST(N'2021-07-13' AS Date), N'L', N'', N'atplotonxxom@yahoo.co.id', CAST(N'2021-07-17T05:40:02.833' AS DateTime), N'', CAST(N'2021-07-17T05:40:02.833' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ms_User] OFF
SET IDENTITY_INSERT [dbo].[tr_booking_lapangan] ON 

INSERT [dbo].[tr_booking_lapangan] ([id], [id_tim], [id_lapangan], [id_status], [notifikasi], [tanggal], [jam], [durasi], [dp], [sub_harga], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 4, 1, 5, 0, CAST(N'2021-07-18T00:00:00.000' AS DateTime), CAST(N'15:00:00' AS Time), 1, 20000, 40000, N'f20210718150518.jpg', N'aku@gmail.com', CAST(N'2021-07-18T15:04:48.170' AS DateTime), N'atpasdl@gmail.com', CAST(N'2021-07-18T15:10:39.113' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_booking_lapangan] OFF
SET IDENTITY_INSERT [dbo].[tr_jadwal_lapangan] ON 

INSERT [dbo].[tr_jadwal_lapangan] ([id], [id_lapangan], [id_tim1], [id_tim2], [tanggal], [jam], [durasi], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (9, 1, 4, 4, CAST(N'2021-07-18' AS Date), CAST(N'15:00:00' AS Time), 1, N'System', CAST(N'2021-07-18T15:07:06.570' AS DateTime), N'', CAST(N'2021-07-18T15:07:06.570' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[tr_jadwal_lapangan] OFF
SET IDENTITY_INSERT [dbo].[tr_pelunasan] ON 

INSERT [dbo].[tr_pelunasan] ([id], [id_trbooking], [nominal], [bukti_bayar], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (6, 6, 20000, N'f20210718150953.jpg', N'aku@gmail.com', CAST(N'2021-07-18T15:09:53.383' AS DateTime), N'', CAST(N'2021-07-18T15:09:53.383' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_pelunasan] OFF
SET IDENTITY_INSERT [dbo].[tr_pendaftaran_merchant] ON 

INSERT [dbo].[tr_pendaftaran_merchant] ([id], [id_merchant], [id_biaya], [id_status], [notifikasi], [nominal], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (1, 7, 1, 5, 0, 50000, N'f20210630030445.jpg', N'fsyah8912@gmail.com', CAST(N'2021-06-30T01:36:53.097' AS DateTime), N'', CAST(N'2021-06-30T03:04:45.077' AS DateTime), 1)
INSERT [dbo].[tr_pendaftaran_merchant] ([id], [id_merchant], [id_biaya], [id_status], [notifikasi], [nominal], [bukti_transfer], [creaby], [creadate], [modiby], [modidate], [status]) VALUES (2, 8, 4, 5, 0, 500000, N'', N'atpl@gmail.com', CAST(N'2021-06-30T09:20:39.567' AS DateTime), N'0320190018@polman.astra.ac.id', CAST(N'2021-06-30T10:27:03.187' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tr_pendaftaran_merchant] OFF
SET IDENTITY_INSERT [dbo].[tr_Review] ON 

INSERT [dbo].[tr_Review] ([id], [id_merchant], [id_user], [review], [rating], [creaby], [creadate], [modiby], [modidate], [status], [id_trbooking]) VALUES (9, 8, 9, N'Ini bagus', 3, N'aku@gmail.com', CAST(N'2021-07-18T15:09:53.393' AS DateTime), N'', CAST(N'2021-07-18T15:09:53.393' AS DateTime), 1, 6)
SET IDENTITY_INSERT [dbo].[tr_Review] OFF
ALTER TABLE [dbo].[dt_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_dtAjakTanding_msTim] FOREIGN KEY([juara])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[dt_ajak_tanding] CHECK CONSTRAINT [FK_dtAjakTanding_msTim]
GO
ALTER TABLE [dbo].[dt_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_dtAjakTanding_trAjakTanding] FOREIGN KEY([id_ajak_tanding])
REFERENCES [dbo].[tr_ajak_tanding] ([id])
GO
ALTER TABLE [dbo].[dt_ajak_tanding] CHECK CONSTRAINT [FK_dtAjakTanding_trAjakTanding]
GO
ALTER TABLE [dbo].[dt_FotoLapangan]  WITH CHECK ADD FOREIGN KEY([id_lapangan])
REFERENCES [dbo].[ms_Lapangan] ([id_lapangan])
GO
ALTER TABLE [dbo].[dt_jadwal_event]  WITH CHECK ADD  CONSTRAINT [FK_dtJadwalEvent_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[dt_jadwal_event] CHECK CONSTRAINT [FK_dtJadwalEvent_msStatus]
GO
ALTER TABLE [dbo].[dt_jadwal_event]  WITH CHECK ADD  CONSTRAINT [FK_dtJadwalEvent_msTim] FOREIGN KEY([id_tim1])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[dt_jadwal_event] CHECK CONSTRAINT [FK_dtJadwalEvent_msTim]
GO
ALTER TABLE [dbo].[dt_jadwal_event]  WITH CHECK ADD  CONSTRAINT [FK_dtJadwalEvent_msTim1] FOREIGN KEY([id_tim2])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[dt_jadwal_event] CHECK CONSTRAINT [FK_dtJadwalEvent_msTim1]
GO
ALTER TABLE [dbo].[dt_jadwal_event]  WITH CHECK ADD  CONSTRAINT [FK_dtJadwalEvent_teEvent] FOREIGN KEY([id_event])
REFERENCES [dbo].[tr_Event] ([id])
GO
ALTER TABLE [dbo].[dt_jadwal_event] CHECK CONSTRAINT [FK_dtJadwalEvent_teEvent]
GO
ALTER TABLE [dbo].[dt_jadwal_tim]  WITH CHECK ADD FOREIGN KEY([id_merchant])
REFERENCES [dbo].[ms_Merchant] ([id_merchant])
GO
ALTER TABLE [dbo].[dt_jadwal_tim]  WITH CHECK ADD FOREIGN KEY([id_tim])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[dt_lapangan_event]  WITH CHECK ADD  CONSTRAINT [FK_dtLapanganEvent_msLapangan] FOREIGN KEY([id_lapangan])
REFERENCES [dbo].[ms_Lapangan] ([id_lapangan])
GO
ALTER TABLE [dbo].[dt_lapangan_event] CHECK CONSTRAINT [FK_dtLapanganEvent_msLapangan]
GO
ALTER TABLE [dbo].[dt_lapangan_event]  WITH CHECK ADD  CONSTRAINT [FK_dtLapanganEvent_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[dt_lapangan_event] CHECK CONSTRAINT [FK_dtLapanganEvent_msStatus]
GO
ALTER TABLE [dbo].[dt_lapangan_event]  WITH CHECK ADD  CONSTRAINT [FK_dtLapanganEvent_teEvent] FOREIGN KEY([id_event])
REFERENCES [dbo].[tr_Event] ([id])
GO
ALTER TABLE [dbo].[dt_lapangan_event] CHECK CONSTRAINT [FK_dtLapanganEvent_teEvent]
GO
ALTER TABLE [dbo].[dt_Merchant]  WITH CHECK ADD FOREIGN KEY([id_fasilitas])
REFERENCES [dbo].[ms_Fasilitas] ([id_fasilitas])
GO
ALTER TABLE [dbo].[dt_Merchant]  WITH CHECK ADD FOREIGN KEY([id_merchant])
REFERENCES [dbo].[ms_Merchant] ([id_merchant])
GO
ALTER TABLE [dbo].[ms_Akun]  WITH CHECK ADD FOREIGN KEY([id_role])
REFERENCES [dbo].[ms_Role] ([id_role])
GO
ALTER TABLE [dbo].[ms_Lapangan]  WITH CHECK ADD FOREIGN KEY([id_merchant])
REFERENCES [dbo].[ms_Merchant] ([id_merchant])
GO
ALTER TABLE [dbo].[ms_Merchant]  WITH CHECK ADD  CONSTRAINT [FK_ms_Merchant_ms_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[ms_Merchant] CHECK CONSTRAINT [FK_ms_Merchant_ms_User]
GO
ALTER TABLE [dbo].[ms_Tim]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[ms_User]  WITH CHECK ADD FOREIGN KEY([id_akun])
REFERENCES [dbo].[ms_Akun] ([id_akun])
GO
ALTER TABLE [dbo].[tr_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_trAjakTanding_msLapangan] FOREIGN KEY([id_lapangan])
REFERENCES [dbo].[ms_Lapangan] ([id_lapangan])
GO
ALTER TABLE [dbo].[tr_ajak_tanding] CHECK CONSTRAINT [FK_trAjakTanding_msLapangan]
GO
ALTER TABLE [dbo].[tr_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_trAjakTanding_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[tr_ajak_tanding] CHECK CONSTRAINT [FK_trAjakTanding_msStatus]
GO
ALTER TABLE [dbo].[tr_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_trAjakTanding_msTim] FOREIGN KEY([id_tim1])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_ajak_tanding] CHECK CONSTRAINT [FK_trAjakTanding_msTim]
GO
ALTER TABLE [dbo].[tr_ajak_tanding]  WITH CHECK ADD  CONSTRAINT [FK_trAjakTanding_msTim1] FOREIGN KEY([id_tim2])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_ajak_tanding] CHECK CONSTRAINT [FK_trAjakTanding_msTim1]
GO
ALTER TABLE [dbo].[tr_booking_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trBookingLapangan_msLapangan] FOREIGN KEY([id_lapangan])
REFERENCES [dbo].[ms_Lapangan] ([id_lapangan])
GO
ALTER TABLE [dbo].[tr_booking_lapangan] CHECK CONSTRAINT [FK_trBookingLapangan_msLapangan]
GO
ALTER TABLE [dbo].[tr_booking_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trBookingLapangan_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[tr_booking_lapangan] CHECK CONSTRAINT [FK_trBookingLapangan_msStatus]
GO
ALTER TABLE [dbo].[tr_booking_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trBookingLapangan_msTim] FOREIGN KEY([id_tim])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_booking_lapangan] CHECK CONSTRAINT [FK_trBookingLapangan_msTim]
GO
ALTER TABLE [dbo].[tr_daftar_tim]  WITH CHECK ADD  CONSTRAINT [FK_trDaftarTim_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[tr_daftar_tim] CHECK CONSTRAINT [FK_trDaftarTim_msStatus]
GO
ALTER TABLE [dbo].[tr_daftar_tim]  WITH CHECK ADD  CONSTRAINT [FK_trDaftarTim_msTim] FOREIGN KEY([id_tim])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_daftar_tim] CHECK CONSTRAINT [FK_trDaftarTim_msTim]
GO
ALTER TABLE [dbo].[tr_daftar_tim]  WITH CHECK ADD  CONSTRAINT [FK_trDaftarTim_msUser] FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[tr_daftar_tim] CHECK CONSTRAINT [FK_trDaftarTim_msUser]
GO
ALTER TABLE [dbo].[tr_Event]  WITH CHECK ADD  CONSTRAINT [FK_teEvent_msUser] FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[tr_Event] CHECK CONSTRAINT [FK_teEvent_msUser]
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trJadwalLapangan_msLapangan] FOREIGN KEY([id_lapangan])
REFERENCES [dbo].[ms_Lapangan] ([id_lapangan])
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan] CHECK CONSTRAINT [FK_trJadwalLapangan_msLapangan]
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trJadwalLapangan_msTim] FOREIGN KEY([id_tim1])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan] CHECK CONSTRAINT [FK_trJadwalLapangan_msTim]
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan]  WITH CHECK ADD  CONSTRAINT [FK_trJadwalLapangan_msTim1] FOREIGN KEY([id_tim2])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_jadwal_lapangan] CHECK CONSTRAINT [FK_trJadwalLapangan_msTim1]
GO
ALTER TABLE [dbo].[tr_main_bareng]  WITH CHECK ADD  CONSTRAINT [FK_trMainBareng_msTim] FOREIGN KEY([id_tim])
REFERENCES [dbo].[ms_Tim] ([id_tim])
GO
ALTER TABLE [dbo].[tr_main_bareng] CHECK CONSTRAINT [FK_trMainBareng_msTim]
GO
ALTER TABLE [dbo].[tr_main_bareng]  WITH CHECK ADD  CONSTRAINT [FK_trMainBareng_msUser] FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[tr_main_bareng] CHECK CONSTRAINT [FK_trMainBareng_msUser]
GO
ALTER TABLE [dbo].[tr_main_bareng]  WITH CHECK ADD  CONSTRAINT [FK_trMainBareng_trMainBareng] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[tr_main_bareng] CHECK CONSTRAINT [FK_trMainBareng_trMainBareng]
GO
ALTER TABLE [dbo].[tr_pelunasan]  WITH CHECK ADD  CONSTRAINT [FK_trPelunasan_trBookingLapangan] FOREIGN KEY([id_trbooking])
REFERENCES [dbo].[tr_booking_lapangan] ([id])
GO
ALTER TABLE [dbo].[tr_pelunasan] CHECK CONSTRAINT [FK_trPelunasan_trBookingLapangan]
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant]  WITH CHECK ADD  CONSTRAINT [FK_tr_PendafataranMerchant_ms_Biaya] FOREIGN KEY([id_biaya])
REFERENCES [dbo].[ms_Biaya] ([id_biaya])
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant] CHECK CONSTRAINT [FK_tr_PendafataranMerchant_ms_Biaya]
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant]  WITH CHECK ADD  CONSTRAINT [FK_tr_PendafataranMerchant_tr_PendafataranMerchant] FOREIGN KEY([id])
REFERENCES [dbo].[tr_pendaftaran_merchant] ([id])
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant] CHECK CONSTRAINT [FK_tr_PendafataranMerchant_tr_PendafataranMerchant]
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant]  WITH CHECK ADD  CONSTRAINT [FK_trPendafataranMerchant_msMerchant] FOREIGN KEY([id_merchant])
REFERENCES [dbo].[ms_Merchant] ([id_merchant])
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant] CHECK CONSTRAINT [FK_trPendafataranMerchant_msMerchant]
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant]  WITH CHECK ADD  CONSTRAINT [FK_trPendafataranMerchant_msStatus] FOREIGN KEY([id_status])
REFERENCES [dbo].[ms_Status] ([id_status])
GO
ALTER TABLE [dbo].[tr_pendaftaran_merchant] CHECK CONSTRAINT [FK_trPendafataranMerchant_msStatus]
GO
ALTER TABLE [dbo].[tr_Review]  WITH CHECK ADD  CONSTRAINT [FK_trReview_msMerchant] FOREIGN KEY([id_merchant])
REFERENCES [dbo].[ms_Merchant] ([id_merchant])
GO
ALTER TABLE [dbo].[tr_Review] CHECK CONSTRAINT [FK_trReview_msMerchant]
GO
ALTER TABLE [dbo].[tr_Review]  WITH CHECK ADD  CONSTRAINT [FK_trReview_msUser] FOREIGN KEY([id_user])
REFERENCES [dbo].[ms_User] ([id_user])
GO
ALTER TABLE [dbo].[tr_Review] CHECK CONSTRAINT [FK_trReview_msUser]
GO
USE [master]
GO
ALTER DATABASE [DB_Futsal] SET  READ_WRITE 
GO
