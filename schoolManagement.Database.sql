USE [master]
GO
/****** Object:  Database [schoolManagement]    Script Date: 9/3/2018 1:11:56 PM ******/
CREATE DATABASE [schoolManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'schoolManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OULDEVELOPER\MSSQL\DATA\schoolManagement.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'schoolManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OULDEVELOPER\MSSQL\DATA\schoolManagement_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [schoolManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [schoolManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [schoolManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [schoolManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [schoolManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [schoolManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [schoolManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [schoolManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [schoolManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [schoolManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [schoolManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [schoolManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [schoolManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [schoolManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [schoolManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [schoolManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [schoolManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [schoolManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [schoolManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [schoolManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [schoolManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [schoolManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [schoolManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [schoolManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [schoolManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [schoolManagement] SET  MULTI_USER 
GO
ALTER DATABASE [schoolManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [schoolManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [schoolManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [schoolManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [schoolManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [schoolManagement] SET  READ_WRITE 
GO