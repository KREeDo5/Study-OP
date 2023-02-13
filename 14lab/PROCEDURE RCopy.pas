PROCEDURE RCopy(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      WRITE(OUTPUT, Ch)      
      RCopy(F) {tail recursion}
    END
END;{RCopy}
{WRITELN [OUT] PROCEDURE}
