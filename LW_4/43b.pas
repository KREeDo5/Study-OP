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
    Looking := 'Y';
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
      {Check window for 'land'}
      BEGIN {DP1.3}
        IF W1 = 'l'
        THEN
          IF W2 = 'a'
          THEN
            IF W3 = 'n'
            THEN
              IF W4 = 'd'
              THEN {'land' found}
                Looking := 'L'
      END; {DP1.3}
      {Check window for 'sea'}
      BEGIN {DP1.4}
        IF W1 = 's'
        THEN
          IF W2 = 'e'
          THEN
             IF W3 = 'a'
             THEN {'sea' Found}
                Looking := 'S'
      END; {DP1.4}
    END;
  {made message Sarah}
  BEGIN {DP1.5}
    IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British coming by sea.')
      ELSE
        WRITELN('Sarah didn''t say')
  END
END. {Sarah revere}