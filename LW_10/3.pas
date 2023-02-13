PROGRAM CopyCode(INPUT, OUTPUT);
VAR
  W1, W2: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' '; 
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      W1 := W2;{dvizhenie okna}
      READ(W2);
      WRITE(W2); 
    END;
  IF EOLN(INPUT)
      THEN
        WRITE('#')  
END.
    
