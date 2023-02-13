PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(InFile);
  REWRITE(OutFile);
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
  Sorted := 'N';
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
          WHILE NOT EOLN(F1)
          DO
            BEGIN
              READ(F1, Ch2);
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE {Ch2 < Ch1}
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;{WHILE NOT EOLN(F1)}
          WRITELN(F2, Ch1)
      END;{IF NOT EOLN(F1)}
      CopyFile(F2, F1)
    END
END;
BEGIN { BubbleSort }
  CopyFile(INPUT, F1); { PROCEDURE }
  CopyAndSwap(F1, F2, Sorted); { PROCEDURE }
  CopyFile(F2, OUTPUT) { PROCEDURE }
END.{ BubbleSort }

