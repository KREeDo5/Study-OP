PROGRAM SarahRevere(INPUT, OUTPUT);
{Printing a message about how the British are going, depending on whether 'land' or 'sea' is found first in the entrance.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {Initialization W1,W2,W3,W4,Looking}
  BEGIN {DP1.1}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y'
  END; {DP1.1}
  WHILE Looking = 'Y'
  DO
    BEGIN
      {Move the window, check the end of the data}
      BEGIN {DP1.2}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4 = '#'
        THEN {End of the data}
          Looking := 'N'
      END; {DP1.2}
      WRITELN(W1, W2, W3, W4) {output for testing}
      {Check window for 'land'}
      {Check window for 'sea'}
    END
  {made message Sarah}
END. {Sarah revere}
