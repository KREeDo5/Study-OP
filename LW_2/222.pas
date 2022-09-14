PROGRAM What(INPUT, OUTPUT);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  READ(Ch1, Ch2);
  WRITELN('INPUT DATA');
  WRITELN(Ch1, Ch2);
  WRITELN('The first character is a number?');
  IF '0' <= Ch1
  THEN
    IF Ch1 <= '9'
    THEN
      WRITELN('YES')
    ELSE
      WRITELN('NO')
  ELSE
    WRITELN('NO')
END.
