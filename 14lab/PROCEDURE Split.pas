PROCEDURE Split(VAR F, F1, F2: TEXT);
BEGIN {Split}
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      Sorted := 'Y';
      RESET(F);
      REWRITE(F1);
      REWRITE(F2);
      IF NOT EOLN(F)
      THEN
        BEGIN
          READ(F, Ch1);
          WHILE NOT EOLN(F)
          DO
            BEGIN
              READ(F, Ch1);
              READ(F, Ch2);
              WRITE(F1, Ch1);
              WRITE(F2, Ch2);
            END
        END;
      WRITELN(F1);
      WRITELN(F2)
    END
END; {Split}
