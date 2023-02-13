PROGRAM LexicoGraphicheskiyPoryadok(INPUT, OUTPUT);
VAR
  txt, F1, F2: TEXT;
  ch, Result: CHAR;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  RESET(F1);
  RESET(F2);
  Result := '0'; {F1=F2}
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {F1<F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {F1>F2}
          Result := '2'
    END;
  IF Result = '0'
  THEN
    IF (NOT EOLN(F1)) AND (EOLN(F2))
    THEN
      Result := '2'
    ELSE
      Result := '1'
END; {Lexico}
BEGIN
  REWRITE(txt);
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(INPUT, ch);
      WRITE(txt, ch)
    END;
  WRITELN(txt);
  RESET(txt);
  REWRITE(F1);
  REWRITE(F2);
  ch := ' ';
  WHILE ch <> '#'
  DO
    BEGIN
      READ(txt, ch);
      IF ch <> '#'
      THEN
        WRITE(F1, ch)
    END;
  WHILE NOT EOLN(txt)
  DO
    BEGIN 
      READ(txt, ch);
      WRITE(F2, ch)
    END;
  Lexico(F1, F2, Result);
  WRITELN(Result)
END.

