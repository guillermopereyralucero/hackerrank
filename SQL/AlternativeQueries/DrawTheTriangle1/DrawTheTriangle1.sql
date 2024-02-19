DECLARE @Pattern NVARCHAR(MAX) = '';
DECLARE @RowNumber INT = 20;

WHILE @RowNumber > 0
BEGIN
    SET @Pattern = @Pattern + REPLICATE('* ', @RowNumber) + CHAR(10);
    SET @RowNumber = @RowNumber - 1;
END

PRINT @Pattern;
