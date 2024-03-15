USE [Creditos]
GO

CREATE PROCEDURE dbo.sp_cliente_obtener(@pNumeroDocumento VARCHAR(11))
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
  WHERE NumeroDocumento=@pNumeroDocumento
end




