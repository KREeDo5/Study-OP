PROGRAM DeleteSpace(INPUT, OUTPUT);
VAR
  Ch, Box: CHAR;
BEGIN
  Box := 'Y';
  IF NOT(EOLN)
  THEN
    BEGIN  
      WHILE NOT(EOLN(INPUT))
      DO
        BEGIN
          READ(Ch);
          IF (Ch <> ' ') AND (Ch = 'Y')
          THEN
            Box := 'N';
          IF Box = 'Y'
          THEN
            BEGIN
              WHILE Ch = ' '
              DO
                READ(Ch);
              Box := 'N'
            END;
          IF (Box = 'N') AND (Ch = ' ')
          THEN
            BEGIN
              READ(Ch);
              IF Ch <> ' '
              THEN
                WRITE(' ');
              IF Ch = ' '
              THEN
                BEGIN
                  WHILE (Ch = ' ') AND (NOT(EOLN(INPUT)))
                  DO
                    BEGIN
                      READ(Ch);
                      IF Ch <> ' '
                      THEN
                        WRITE(' ')
                    END
                END
            END;
          IF (Ch <> ' ')
          THEN
            WRITE(Ch)  
        END       
    END;
  WRITELN    
END.
