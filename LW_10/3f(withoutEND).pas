PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2, EW1, EW2, EW3: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' ';
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
            READ(W2);
          IF W2 = 'E'
              THEN
                W1 := ' '
        END;
      IF (W2 = '(') OR (W2 = ')') {CHECK PROBEL V SKOBKAX}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF (W1 = '(') AND (W2 = ')')
          THEN
            BEGIN
              WRITE(W2);
              READ(W2);
              IF W2 = 'E'
              THEN
                W1 := ' '
            END;          
          WHILE W2 = ' '
          DO
            READ(W2);
            IF W2 = 'E'
            THEN
              BEGIN
                W1 := ' '
              END
        END;
      IF W2 = ','
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 <> ' '
          THEN
            WRITE(' ')
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
              WRITELN;
              WRITE(W2, EW1, EW2);
              W2 := EW3
            END
        END;                      {check END}
      IF W2 = ';'{Check ;}
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
          IF W2 = ' '
          THEN
            WHILE W2 = ' '
            DO
              READ(W2);
          IF W2 = 'E'
          THEN
            BEGIN
            READ(EW1, EW2, EW3);
            IF (EW1 = 'N') AND (EW2 = 'D') AND ((EW3 = ';') OR (EW3 = '.'))
            THEN
              BEGIN
                WRITELN;
                WRITE(W2, EW1, EW2, EW3);
                READ(W2)
              END  
            END;            
          WRITELN;
          IF EW3 <> '.'
          THEN
            WRITE('  ')
        END;  
      WRITE(W2)  
    END;
  IF EOLN(INPUT)
      THEN
        WRITE('#');
END.
