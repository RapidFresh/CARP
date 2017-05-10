CREATE PROCEDURE [dbo].[produtos_CRUD]
		@acao VARCHAR(10)
      ,@Id INT = NULL
	  ,@TipoProdutoId int = NULL
      ,@Marca NVARCHAR(50) = NULL
	  ,@Modelo  NVARCHAR(50) = NULL
      ,@Descrição  NVARCHAR(550) = NULL
	  ,@Preço numeric(18,2) = NULL
	  ,@Disponibilidade NVARCHAR(50) = NULL
	  ,@Desconto int = NULL
	  ,@DataRegisto date = NULL
	  ,@ImagemPrincipal NVARCHAR(50) = NULL
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @acao = 'SELECT'
      BEGIN
            SELECT Id, TipoProdutoId, Marca, Modelo, Descrição, Preço, Disponibilidade, Desconto, DataRegisto, ImagemPrincipal
            FROM Produtos
      END
 
      --INSERT
    IF @acao = 'INSERT'
      BEGIN
            INSERT INTO Produtos(TipoProdutoId, Marca, Modelo, Descrição, Preço, Disponibilidade, Desconto, DataRegisto, ImagemPrincipal)
            VALUES (@TipoProdutoId, @Marca, @Modelo, @Descrição, @Preço, @Disponibilidade, @Desconto, @DataRegisto, @ImagemPrincipal)
      END
 
      --UPDATE
    IF @acao = 'UPDATE'
      BEGIN
            UPDATE Produtos
            SET TipoProdutoId = @TipoProdutoId, Marca = @Marca, Modelo = @Modelo, Descrição = @Descrição, Preço = @Preço, Disponibilidade = @Disponibilidade, Desconto = @Desconto, DataRegisto = @DataRegisto, ImagemPrincipal = @ImagemPrincipal  
            WHERE Id = @Id
      END
 
      --DELETE
    IF @acao = 'DELETE'
      BEGIN
            DELETE FROM Produtos
            WHERE Id = @Id
      END
END