USE [Creditos]
GO

CREATE PROCEDURE dbo.sp_cliente_listar
AS
BEGIN
SELECT [IdCliente]
      ,[Nombre]
      ,[ApelidoPaterno]
      ,[TipoDocumento]
      ,[NumeroDocumento]
      ,[Sexo]
      ,[FechaNac]
      ,[Direccion]
      ,[CodigoPostal]
      ,[EstadoCivil]
  FROM [dbo].[Cliente]
end
