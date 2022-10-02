PROGRAM Pyziryok(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN
  READ(Ch1);
  READ(Ch2);
  READ(Ch3);
  IF Ch1 <= Ch2
  THEN
    IF Ch3 < Ch2
    THEN
      IF Ch1 <= Ch3
      THEN
        WRITELN(Ch1, Ch3, Ch2)
      ELSE {Ch3 < Ch1, Ch3 < Ch2, Ch1 <= Ch2}
        WRITELN(Ch3, Ch1, Ch2)
    ELSE {Ch1 <= Ch2 <= Ch3}
      WRITELN(Ch1, Ch2, Ch3)     
  ELSE {Ch2 < Ch1}
    IF Ch3 < Ch1
    THEN 
      IF Ch2 <= Ch3
      THEN
        WRITELN(Ch2, Ch3, Ch1)
      ELSE {Ch3 < Ch2 < Ch1}
        WRITELN(Ch3, Ch2, Ch1)
    ELSE {Ch2 < Ch1 <= Ch3}
      WRITELN(Ch2, Ch1, Ch3)
END.
