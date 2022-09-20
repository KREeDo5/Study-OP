PROGRAM Counter(INPUT, OUTPUT);
VAR
  Symb, Ch1, Ch2, Ch3: CHAR;
BEGIN
  Ch1 := '0'; Ch2 := '0'; Ch3 := '0';
  READ(Symb);
  WHILE Symb <> '#'
  DO
    BEGIN
      IF Ch3 = '0'
      THEN
        Ch3 := '1'
      ELSE
        IF Ch3 = '1'
        THEN
          Ch3 := '2'
        ELSE
          IF Ch3 = '2'
          THEN
            Ch3 := '3'
          ELSE
           IF Ch3 = '3'
           THEN
             Ch3 := '4'
           ELSE
             IF Ch3 = '4'
             THEN
               Ch3 := '5'
             ELSE
               IF Ch3 = '5'
               THEN
                 Ch3 := '6'
               ELSE
                 IF Ch3 = '6'
                 THEN
                   Ch3 := '7'
                 ELSE
                   IF Ch3 = '7'
                   THEN
                     Ch3 := '8'
                   ELSE
                     IF Ch3 = '8'
                     THEN
                       Ch3 := '9'
                     ELSE
                       IF Ch3 = '9'
                       THEN
                         Ch3 := '0';
      IF Ch3 = '0'
      THEN
        IF Ch2 = '0'
        THEN
          Ch2 := '1'
        ELSE
          IF Ch2 = '1'
          THEN
            Ch2 := '2'
          ELSE
            IF Ch2 = '2'
            THEN
              Ch2 := '3'
            ELSE
              IF Ch2 = '3'
              THEN
                Ch2 := '4'
              ELSE
                IF Ch2 = '4'
                THEN
                  Ch2 := '5'
                ELSE
                  IF Ch2 = '5'
                  THEN
                    Ch2 := '6'
                  ELSE
                    IF Ch2 = '6'
                    THEN
                      Ch2 := '7'
                    ELSE
                      IF Ch2 = '7'
                      THEN
                        Ch2 := '8'
                      ELSE
                        IF Ch2 = '8'
                        THEN
                          Ch2 := '9'
                        ELSE
                          IF Ch2 = '9'
                          THEN
                            Ch2 := '0';
      IF Ch3 = '0'
      THEN
        IF Ch2 = '0'
        THEN
          IF Ch1 = '0'
          THEN
            Ch1 := '1'
          ELSE
            IF Ch1 = '1'
            THEN
              Ch1 := '2'
            ELSE
              IF Ch1 = '2'
              THEN
                Ch1 := '3'
              ELSE
                IF Ch1 = '3'
                THEN
                  Ch1 := '4'
                ELSE
                  IF Ch1 = '4'
                  THEN
                    Ch1 := '5'
                  ELSE
                    IF Ch1 = '5'
                    THEN
                      Ch1 := '6'
                    ELSE
                      IF Ch1 = '6'
                      THEN
                        Ch1 := '7'
                      ELSE
                        IF Ch1 = '7'
                        THEN
                          Ch1 := '8'
                        ELSE
                          IF Ch1 = '8'
                          THEN
                            Ch1 := '9';
      READ(Symb);
      IF Ch3 = '9'
      THEN
        IF Ch2 = '9'
        THEN
	  IF Ch1 = '9'
	  THEN
	    BEGIN
	      Symb := '#';
	      WRITELN('ERROR, overflow!')
	    END
    END;
  WRITELN('Number of characters is ', Ch1, Ch2, Ch3)
END.
