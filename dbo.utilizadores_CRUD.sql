CREATE PROCEDURE [dbo].[utilizadores_CRUD]
		@acao VARCHAR(10)
      ,@Id INT = NULL
	  ,@Nome NVARCHAR(50) = NULL
      ,@PalavraPasse NVARCHAR(50) = NULL
	  ,@Dinheiro numeric(5,2) = NULL
      ,@Email NVARCHAR(50) = NULL
	  ,@Pais NVARCHAR(50) = NULL
	  ,@Rua NVARCHAR(50) = NULL
	  ,@Cidade NVARCHAR(50) = NULL
	  ,@Distrito NVARCHAR(50) = NULL
	  ,@CodigoPostal NVARCHAR(50) = NULL
	  ,@Contribuinte numeric(9,0) = NULL
	  ,@Imagem IMAGE = NULL
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @acao = 'SELECT'
      BEGIN
            SELECT Id, Nome, Dinheiro, Email, Pais, Rua, Cidade, Distrito, CodigoPostal, Contribuinte, Imagem
            FROM Utilizadores
      END
 
      --INSERT
    IF @acao = 'INSERT'
      BEGIN
            INSERT INTO Utilizadores(Email, Nome, PalavraPasse, Dinheiro, Pais, Rua, Cidade, Distrito, CodigoPostal, Contribuinte, Imagem)
            VALUES (@Email, @Nome, @PalavraPasse, @Dinheiro, @Pais, @Rua, @Cidade, @Distrito, @CodigoPostal, @Contribuinte, @Imagem)
      END
 
      --UPDATE
    IF @acao = 'UPDATE'
      BEGIN
            UPDATE Utilizadores
            SET Nome = @Nome, PalavraPasse = @PalavraPasse, Dinheiro = @Dinheiro, Email = @Email, Pais = @Pais, Rua = @Rua, Cidade = @Cidade, Distrito = @Distrito, CodigoPostal = @CodigoPostal, Contribuinte = @Contribuinte, Imagem =@Imagem   
            WHERE Id = @Id
      END
 
      --DELETE
    IF @acao = 'DELETE'
      BEGIN
            DELETE FROM Utilizadores
            WHERE Id = @Id
      END
END