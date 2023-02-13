PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  F1: TEXT;
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
BEGIN { BubbleSort }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  RESET(F1);
  REWRITE(OUTPUT);
  CopyFile(F1, OUTPUT)
END.{ BubbleSort }

