DECLARE @Pattern NVARCHAR(MAX) = '';
DECLARE @RowNumber INT = 0;

WHILE @RowNumber < 21
BEGIN
    SET @Pattern = @Pattern + REPLICATE('* ', @RowNumber) + CHAR(10);
    SET @RowNumber = @RowNumber + 1;
END

PRINT @Pattern;
