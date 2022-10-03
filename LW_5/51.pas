PROGRAM IFSort3(INPUT, OUTPUT); {DP1}
{sorting 3-line from INPUT to OUTPUT}
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('Input data ', Ch1, Ch2, Ch3);
  WRITE('Sorted data ');
  {sorting Ch1, Ch2, Ch3 to OUTPUT}
  BEGIN {DP2.1}
    IF Ch1 < Ch2
    THEN
    {Ch1 < Ch2:sorting Ch1, Ch2, Ch3 to OUTPUT}
      IF Ch2 < Ch3 {DP2.1.1}
      THEN {Ch1 < Ch2 < Ch3:sorting Ch1, Ch2, Ch3 to OUTPUT}
        WRITELN(Ch1, Ch2, Ch3)
      ELSE
      {Ch1 < Ch2, Ch3 <= Ch2:sorting Ch1, Ch2, Ch3 to OUTPUT}
        IF Ch1 < Ch3{DP2.1.1.1}
        THEN {Ch1 < Ch3 <= Ch2:sorting Ch1, Ch2, Ch3 to OUTPUT}
          WRITELN(Ch1, Ch3, Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:sorting Ch1, Ch2, Ch3 to OUTPUT}
          WRITELN(Ch3, Ch1, Ch2)
    ELSE
    {Ch2 <= Ch1:sorting Ch1, Ch2, Ch3 ? OUTPUT}
      IF Ch1 < Ch3{DP2.1.2}
      THEN {Ch2 <= Ch1 < Ch3:sorting Ch1, Ch2, Ch3 to OUTPUT}
        WRITELN(Ch2, Ch1, Ch3)
      ELSE
      {Ch2 <= Ch1, Ch3 <= Ch1:sorting Ch1, Ch2, Ch3 to OUTPUT}
        IF Ch2 < Ch3{DP2.1.2.1}
        THEN {Ch2 < Ch3 <= Ch1:sorting Ch1, Ch2, Ch3 to OUTPUT}
          WRITELN(Ch2, Ch3, Ch1)
        ELSE {Ch3 <= Ch2 <= Ch1:sorting Ch1, Ch2, Ch3 to OUTPUT}
          WRITELN(Ch3, Ch2, Ch1)
  END
END. {IFsort3}
