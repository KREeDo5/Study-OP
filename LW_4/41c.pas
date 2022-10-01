PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответсвующего сообщения, зависящего от величины
 на входе: '...by land' для 1; '...by sea' для 2;
 иначе печать сообщения об ошибке}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns = 'T'
  THEN
    BEGIN
      READ(Lanterns);
      IF Lanterns = 'T'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('The British are coming by land.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
