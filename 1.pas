PROGRAM RDigit(INPUT, OUTPUT);
VAR 
  I: INTEGER;
  Sum: INTEGER; 
  
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);   
{Считывает текущий символ из файла, если он - цифра, возвращает его преобразуя в значение типа INTEGER. 
 Если считанный символ не цифравозвращает -1} 
VAR
  Ch: CHAR;   
BEGIN  {ReadDigit}
  D := -1;
  IF NOT(EOLN(F))
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN D := 0  ELSE
      IF Ch = '1' THEN D := 1  ELSE
      IF Ch = '2' THEN D := 2  ELSE
      IF Ch = '3' THEN D := 3  ELSE
      IF Ch = '4' THEN D := 4  ELSE
      IF Ch = '5' THEN D := 5  ELSE
      IF Ch = '6' THEN D := 6  ELSE
      IF Ch = '7' THEN D := 7  ELSE
      IF Ch = '8' THEN D := 8  ELSE
      IF Ch = '9' THEN D := 9  ELSE
    END
END;  {ReadDigit}

BEGIN  {RDigit}
  I := 0;
  Sum := 0;  
  WHILE (I <> -1)
  DO
    BEGIN       
      ReadDigit(INPUT, I); 
      IF (I <> -1)
      THEN
        Sum := Sum + I 
    END;
  WRITELN('Сумма первых встреченных цифр равна ', Sum)
END.  {RDigit}
