PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(InFile);
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch);
    END;
  WRITELN(OutFile)
END;
PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR
 Ch1, Ch2: CHAR;
BEGIN
  RESET(F1);
  REWRITE(F2);
  READ(F1, Ch1);
  READ(F1, Ch2);
  IF Ch1 <= Ch2
  THEN
    BEGIN
      WRITE(F2, Ch1);
      WRITE(F2, Ch2);
      Sorted := 'Y'
    END
  ELSE
    BEGIN
      WRITE(F2, Ch2);
      WRITE(F2, Ch1);
      Sorted := 'N'
    END
END;
BEGIN { BubbleSort }
  REWRITE(F1);
  CopyFile(INPUT, F1); { PROCEDURE }
  CopyAndSwap(F1, F2, Sorted); { PROCEDURE }
  CopyFile(F2, OUTPUT);
  WRITELN(Sorted)
END.{ BubbleSort }

