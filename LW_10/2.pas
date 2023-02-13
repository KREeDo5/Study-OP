PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' ';
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      W1 := W2;
      READ(W2);
      IF (W1 = ' ') AND (W2 = 'E')
      THEN
        WRITELN;
      WRITE(W2);
      IF (W1 = 'N') AND (W2 = ' ')
      THEN
        BEGIN
          WRITELN;
          WRITE('  ')
        END; 
      IF W2 = ';'
      THEN
        BEGIN
          WRITELN;
          WRITE(' ')
        END
    END
END.
    
