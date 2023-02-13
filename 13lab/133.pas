PROGRAM Split(INPUT,OUTPUT);
VAR
  Odds,Evens: TEXT;
  
PROCEDURE CopyOut(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(F);
  WHILE NOT EOLN(F)
  DO
    BEGIN
      READ(F, Ch);
      WRITE(OUTPUT, Ch)
    END
END;

PROCEDURE SwitchOE(VAR Oods, Evens: TEXT);
VAR 
  Ch, Next: CHAR;
BEGIN
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  WHILE NOT EOF
  DO
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN
          READ(Ch);
          IF Next = 'O'
          THEN
            BEGIN
              WRITE(Odds, Ch);
              Next := 'E'
            END
          ELSE
            BEGIN
              WRITE(Evens, Ch);
              Next := 'O'
            END
        END;
      READLN
    END;
  WRITELN(Odds);
  WRITELN(Evens)
END;

BEGIN
  SwitchOE(Odds, Evens);
  CopyOut(Odds);
  CopyOut(Evens);
  WRITELN
END.
