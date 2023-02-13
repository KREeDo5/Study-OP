PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, W5: CHAR;
BEGIN
  W1 := '';
  W2 := '';
  W3 := '';
  W4 := '';
  W5 := '';  
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      W4 := W5;
      READ(W5);
      WRITE(W2);
      IF W2 <> ' '
      THEN
        WRITE(W2);
      IF (W1 = 'B') AND (W2 = 'E') AND (W3 = 'G') AND (W4 = 'I') AND (W5 = 'N')
      THEN
        BEGIN
          WRITELN(W3, W4, W5);
          W3 := '';
          W4 := '';
          W5 := '';
          WRITE('  ')
        END;
      IF W2 = ';'
      THEN
        BEGIN
          WRITELN;
          WRITE('  ')
        END;
      IF (W3 = 'E') AND (W4 = 'N') AND (W5 = 'D')
      THEN
        WRITELN;
      IF (W3 = 'N') AND (W4 = 'D') AND (W5 = '.')
      THEN
        WRITE(W3, W4, W5)
    END
END.
    
