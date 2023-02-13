PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2, Box, EW1, EW2, EW3: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' ';
  Box := ' ';
  EW1 := ' ';
  EW2 := ' ';
  EW3 := ' ';  
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      W1 := W2;{dvizhenie okna}
      READ(W2);
      IF W2 = ' '{CHECK DOUBLE PROBEL}
      THEN
        BEGIN
          READ(W2);
          WHILE W2 = ' '
          DO
            READ(W2)
        END;
      IF (W2 = '(') OR (W2 = ')') {CHECK PROBEL V SKOBKAX}
      THEN
        BEGIN
          WRITE(W2);
          READ(W2);
          WHILE W2 = ' '
          DO
            READ(W2);
          IF W2 = 'E'
          THEN
            W1 := ' '
        END;
      IF (W1 = 'I') AND (W2 = 'N'){check BEGIN}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 = ' '
          THEN {the BEGIN was found}
            BEGIN
              Box := 'B';
              WRITELN;
              WRITE(' ')
            END
        END;                      {check BEGIN}
      IF (W1 = ' ') AND (W2 = 'E'){check END}
      THEN
        BEGIN
          READ(EW1, EW2, EW3);
          IF (EW1 = 'N') AND (EW2 = 'D') AND ((EW3 = ' ') OR (EW3 = ';') OR (EW3 = '.'))
          THEN
            BEGIN
              Box := 'E'; {the END was found}
              WRITELN;
              WRITE(W2, EW1, EW2);
              W2 := EW3
            END
        END;                      {check END}
      IF (Box = 'B') AND (W2 = ';')
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          WHILE (W1 = ';') AND (W2 = ';')
          DO
            BEGIN
              WRITE(W2);
              W1 := W2;
              READ(W2)
            END;
          WRITELN;
          WRITE('  ')
        END;  
      WRITE(W2)  
    END;
  IF EOLN(INPUT)
      THEN
        WRITE('#');
END.
