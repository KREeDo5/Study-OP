PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch);
    END;
  WRITELN(OutFile)
END;
PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
BEGIN
  WHILE Sorted = 'N'
  DO
    BEGIN
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WRITELN(F2, Ch1)  
        END;
      RESET(F2);
      REWRITE(F1);
      CopyFile(F2, F1)      
    END
END;
BEGIN { BubbleSort }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  Sorted :='N';
  CopyAndSwap(F1, F2, Sorted);
  RESET(F1);
  REWRITE(OUTPUT);
  CopyFile(F1, OUTPUT)
END.{ BubbleSort }

