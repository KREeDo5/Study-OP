PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2, W3, Box: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  Box := ' ';
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      READ(W3);
      IF (W1 = 'E') AND (W2 = 'N') AND (W3 = 'D') AND (Box <> 'G')
      THEN
        WRITELN;
      ELSE (W1 = 'G') AND (W2 = 'I') AND (W3 = 'N') OR (Box = 'G')
      THEN
        BEGIN
          Box := 'G';
          IF NOT ((W1 = 'E') AND (W2 = 'N') AND (W3 = 'D'))
          THEN
            WRITELN;
            WRITE(W3);
          IF W3 = ';'
          THEN
            BEGIN
              WRITELN;
              WRITE(' ')
            END
          ELSE
            WRITE(W3);
          IF (W1 = 'E') AND (W2 = 'N') AND (W3 = 'D')
          THEN
            Box := ' ';
        END; 
    END
END.
    
