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
      IF (W1 <> ',') AND (W2 = ' '){CHECK DOUBLE PROBEL}
      THEN
        BEGIN
          READ(W2);
          WHILE (W2 = ' ') AND (NOT EOLN(INPUT))
          DO
            READ(W2);
          IF W2 = 'E'
          THEN
            W1 := ' '
        END;     {CHECK DOUBLE PROBEL}
      IF (W2 = '(') OR (W2 = ')') {CHECK SKOBKI}
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
            W1 := ' '
        END;                      {CHECK SKOBKI}
      IF W2 = ','{check ,}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 <> ' '
          THEN
            WRITE(' ')
        END;     {check ,}
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
      IF W2 = 'E'{check END}
      THEN
        BEGIN
          READ(EW1);
          IF EW1 <> 'N'{E*}
          THEN
            BEGIN
              WRITE(W2);
              W2 := EW1;
            END
          ELSE{EN*}
            BEGIN
              READ(EW2);
              IF EW2 <> 'D'
              THEN
                BEGIN
                  WRITE(W2, EW1);
                  W2 := EW2;
                END
              ELSE{END*}
                BEGIN
                  READ(EW3);
                  IF ((EW3 = ' ') OR (EW3 = ';') OR (EW3 = '.')) AND (W1 = ' '){_END;/_END_/_END.}
                  THEN
                    BEGIN
                      WHILE EW3 = ' '{_END_}
                      DO
                        READ(EW3);{-probeli}
                      IF (EW3 = ';') OR (EW3 = '.'){_END;/_END.}
                      THEN
                        WRITELN;
                      WRITE(W2, EW1, EW2);
                      W2 := EW3     
                    END
                  ELSE{*END*}
                    BEGIN
                      WRITE(W2, EW1, EW2);
                      W2 := EW3
                    END
                END  
            END       
        END;                     {check END}
      IF W2 = ';'{Check ;}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          WHILE (W1 = ';') AND (W2 = ';') {Check double ;}
          DO
            BEGIN
              WRITE(W2);
              W1 := W2;
              READ(W2)
            END;                          {Check double ;}
          WHILE W2 = ' ' {Check probel after ;}
          DO
            READ(W2);          
          WRITELN;       {Check probel after ;}
          EW3 := ' ';
          IF W2 = 'E' {Check END after ;}
          THEN
            BEGIN
              READ(EW1, EW2, EW3);
              IF (EW1 = 'N') AND (EW2 = 'D') AND ((EW3 = ';') OR (EW3 = '.'))
              THEN
                WRITE(W2, EW1, EW2, EW3);
                W2 := ' ';
              IF (EW1 = 'N') AND (EW2 = 'D') AND (EW3 <> ';') AND (EW3 <> '.')
              THEN
                BEGIN
                  WHILE EW3 = ' '
                  DO
                    READ(EW3);
                  WRITE('  ');
                  WRITE(W2, EW1, EW2, EW3);
                  READ(W2);
                  EW3 := '.'
                END  
            END;      {Check END after ;} 
          IF (EW3 <> '.') 
          THEN
            WRITE('  ')
        END;     {Check ;}
      WRITE(W2)  
    END;
  WRITELN
END.
