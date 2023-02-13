PROCEDURE WhileCopy(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN {WhileCopy}
  WHILE NOT EOLN(F)
  DO
    BEGIN
      READ(F, Ch);
      WRITE(OUTPUT, Ch) {WRITELN [IN] PROCEDURE}
    END
END; {WhileCopy}
