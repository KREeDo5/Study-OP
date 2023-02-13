PROCEDURE RecursiveSort(VAR F: TEXT);
VAR
  F1, F2: TEXT;
BEGIN {RecursiveSort}
  RESET(F);
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF NOT EOLN(F)
      THEN
        BEGIN
          Split(F, F1, F2); {RESET(F, Ch)}
          RecursiveSort(F1);
          RecursiveSort(F2);
          Merge(F, F1, F2)
        END
    END
END; {RecursiveSort}
