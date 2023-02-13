PROGRAM MinSort3(INPUT, OUTPUT);
{sorted 3-line from INPUT to OUTPUT}
VAR 
  Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('Input data ', Ch1, Ch2, Ch3);
  WRITE('Sorted data ');
  {Print min in OUTPUT, save content in Ch1 and Ch2}
  BEGIN {3.1}
  IF Ch1 < Ch2
  THEN
    {Print min from Ch1, Ch3 to OUTPUT, move Ch3 in Ch1, if necessary}
    IF Ch1 < Ch3
    THEN
      BEGIN
        WRITE(Ch1);
        Ch1 := Ch3
      END
    ELSE {Ch3 <= Ch1 < Ch2}
      WRITE(Ch3)
  ELSE {Ch2 <= Ch1}
    {Print min from Ch2, Ch3 to OUTPUT, move Ch3 in Ch2, if necessary}
    IF Ch2 < Ch3
    THEN
      BEGIN
        WRITE(Ch2);
        Ch2 := Ch3
      END
    ELSE {Ch3 <= Ch 2 <= Ch1}
      WRITE(Ch3)
  END; {3.1}
   {Sorting Ch1, Ch2 in OUTPUT}
  WRITELN
END.
