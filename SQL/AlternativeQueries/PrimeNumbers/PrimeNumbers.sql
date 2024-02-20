DECLARE @Numbers NVARCHAR(MAX)='';
DECLARE @Number INT=2;

WHILE @Number<=1000
BEGIN
    DECLARE @IsPrime BIT=1;
    DECLARE @Divisor INT=2;

    WHILE @Divisor<=SQRT(@Number)
    BEGIN
        IF @Number%@Divisor=0
        BEGIN
            SET @IsPrime=0;
            BREAK;
        END
        SET @Divisor=@Divisor+1;
    END
    IF @IsPrime=1
    BEGIN
        SET @Numbers=@Numbers+CONVERT(NVARCHAR(10),@Number)+'&';
    END
    SET @Number=@Number+1;
END
PRINT LEFT(@Numbers,LEN(@Numbers)-1);
