PROGRAM WithoutLast(INPUT, OUTPUT);
VAR
  Ch1: CHAR;
BEGIN
  Ch1 := ' ';
  WHILE NOT(EOLN(INPUT))
  DO
    BEGIN
      WHILE Ch1 = ' '
      DO
        READ(Ch1);
      WRITE(Ch1);
      READ(Ch1)
    END;
  WRITELN  
END.
