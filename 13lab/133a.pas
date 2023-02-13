PROGRAM Split(INPUT,OUTPUT);
VAR
  Odds,Evens: TEXT;
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
          WRITE(Next);
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
  WRITELN
END.
