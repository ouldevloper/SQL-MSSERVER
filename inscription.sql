USE [master]
GO
/****** Object:  Database [inscription]    Script Date: 9/3/2018 1:14:55 PM ******/
CREATE DATABASE [inscription]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'inscription', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OULDEVELOPER\MSSQL\DATA\inscription.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'inscription_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OULDEVELOPER\MSSQL\DATA\inscription_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [inscription] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inscription].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inscription] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [inscription] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [inscription] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [inscription] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [inscription] SET ARITHABORT OFF 
GO
ALTER DATABASE [inscription] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [inscription] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [inscription] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [inscription] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [inscription] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [inscription] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [inscription] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [inscription] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [inscription] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [inscription] SET  ENABLE_BROKER 
GO
ALTER DATABASE [inscription] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [inscription] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [inscription] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [inscription] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [inscription] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [inscription] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [inscription] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [inscription] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [inscription] SET  MULTI_USER 
GO
ALTER DATABASE [inscription] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [inscription] SET DB_CHAINING OFF 
GO
ALTER DATABASE [inscription] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [inscription] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [inscription] SET DELAYED_DURABILITY = DISABLED 
GO
USE [inscription]
GO
/****** Object:  Table [dbo].[insc]    Script Date: 9/3/2018 1:14:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[insc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](25) NULL,
	[lname] [varchar](25) NULL,
	[email] [varchar](55) NULL,
	[login] [varchar](55) NULL,
	[pwd] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [inscription] SET  READ_WRITE 
GO
