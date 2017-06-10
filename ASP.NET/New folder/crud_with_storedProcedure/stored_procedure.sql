CREATE PROCEDURE [dbo].[aptech]
      @Event VARCHAR(10)
      ,@Id INT = NULL
      ,@Name VARCHAR(100) = NULL
      ,@Marks int = NULL
AS
BEGIN  
      --SELECT
    IF @Event = 'SELECT' or @Event = 'select'
      BEGIN
            SELECT * FROM info
      END 
      --INSERT
    IF @Event = 'INSERT' or @Event = 'insert'
      BEGIN
            INSERT INTO info(ID, MARKS)VALUES (@Name, @Country)
      END
 
      --UPDATE
    IF @Event = 'UPDATE' or @Event = 'update'
      BEGIN
            UPDATE info
            SET ID = @Name, Country = @Country WHERE CustomerId = @CustomerId
      END
 
      --DELETE
    IF @Event = 'DELETE' or @Event = 'delete'
      BEGIN
            DELETE FROM info WHERE ID = @CustomerId
      END
END