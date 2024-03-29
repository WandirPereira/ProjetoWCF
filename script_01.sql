USE [master]
GO
/****** Object:  Database [Creditos]    Script Date: 14/03/2024 21:35:59 ******/
CREATE DATABASE [Creditos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Creditos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\Creditos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Creditos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\Creditos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Creditos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Creditos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Creditos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Creditos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Creditos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Creditos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Creditos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Creditos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Creditos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Creditos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Creditos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Creditos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Creditos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Creditos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Creditos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Creditos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Creditos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Creditos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Creditos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Creditos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Creditos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Creditos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Creditos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Creditos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Creditos] SET RECOVERY FULL 
GO
ALTER DATABASE [Creditos] SET  MULTI_USER 
GO
ALTER DATABASE [Creditos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Creditos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Creditos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Creditos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Creditos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Creditos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Creditos', N'ON'
GO
ALTER DATABASE [Creditos] SET QUERY_STORE = OFF
GO
USE [Creditos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/03/2024 21:36:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[TipoDocumento] [char](3) NULL,
	[NumeroDocumento] [varchar](11) NULL,
	[Sexo] [char](1) NULL,
	[FechaNac] [datetime] NULL,
	[Direccion] [varchar](200) NULL,
	[CodigoPostal] [varchar](50) NULL,
	[EstadoCivil] [char](1) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [NumeroDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [EstadoCivil]) VALUES (1, N'ALEX', N'ESPEJO', N'CHAVARRIA', N'DNI', N'42197846', N'M', CAST(N'1983-12-23T00:00:00.000' AS DateTime), N'LIMA', N'LIMA_01', N'S')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [NumeroDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [EstadoCivil]) VALUES (2, N'WANDIR', N'PEREIRA', N'FILHO', N'DNI', N'34232211', N'M', CAST(N'1975-12-23T00:00:00.000' AS DateTime), N'SAO PAULO', N'SAO PAULO', N'S')
GO
/****** Object:  StoredProcedure [dbo].[sp_cliente_listar]    Script Date: 14/03/2024 21:36:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cliente_listar]
AS
BEGIN
SELECT [IdCliente]
      ,[Nombre]
      ,[ApellidoPaterno]
	  ,[ApellidoMaterno]
      ,[TipoDocumento]
      ,[NumeroDocumento]
      ,[Sexo]
      ,[FechaNac]
      ,[Direccion]
      ,[CodigoPostal]
      ,[EstadoCivil]
  FROM [dbo].[Cliente]
end
GO
/****** Object:  StoredProcedure [dbo].[sp_cliente_obtener]    Script Date: 14/03/2024 21:36:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cliente_obtener](@pNumeroDocumento VARCHAR(11))
AS
BEGIN
SELECT [IdCliente]
      ,[Nombre]
      ,[ApellidoPaterno]
	  ,[ApellidoMaterno]
      ,[TipoDocumento]
      ,[NumeroDocumento]
      ,[Sexo]
      ,[FechaNac]
      ,[Direccion]
      ,[CodigoPostal]
      ,[EstadoCivil]
  FROM [dbo].[Cliente]
  WHERE NumeroDocumento=@pNumeroDocumento
end




GO
USE [master]
GO
ALTER DATABASE [Creditos] SET  READ_WRITE 
GO
