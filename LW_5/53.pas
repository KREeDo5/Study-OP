PROGRAM MinSort3(INPUT, OUTPUT);{DP3}
{Sorting 3-string from INPUT to OUTPUT}
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3);
  WRITE('Input data (', Ch1, ',', Ch2,',', Ch3, ') are sorting to (');
  {Printing Minimum in OUTPUT, saved content in Ch1 and Ch2}
  BEGIN {DP3.1}
  IF Ch1 < Ch2
  THEN {Printing Minimum from Ch1, Ch3 to OUTPUT,transfer Ch3 to Ch1,if necessary}
    IF Ch1 < Ch3
    THEN
      BEGIN
        WRITE(Ch1);
        Ch1 := Ch3
      END
    ELSE
      WRITE(Ch3)
  ELSE {Printing Minimum from Ch2, Ch3 to OUTPUT,transfer Ch3 to Ch2,if necessary}
    IF Ch2 < Ch3
    THEN
      BEGIN
        WRITE(Ch2);
        Ch2 := Ch3
      END
    ELSE
      WRITE(Ch3)
  END;{DP3.1}
  {Sorting Ch1, Ch2 in OUTPUT}
  BEGIN {DP3.2}
  WRITE(',');
  IF Ch1 < Ch2
    THEN
      WRITE(Ch1, ',', Ch2, ').')
    ELSE
      WRITE(Ch2, ',', Ch1, ').')
  END;{DP3.2}
  WRITELN
END.{Minsort3}