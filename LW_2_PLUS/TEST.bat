set PROGRAM="%~1"

echo running first test
%PROGRAM% < input1.txt > "%TEMP%\temp.txt" 
fc.exe "%TEMP%\temp.txt" output1.txt
if ERRORLEVEL 1 goto ERROR
echo OK1

echo running second test
%PROGRAM% < input2.txt > "%TEMP%\temp.txt" 
fc.exe "%TEMP%\temp.txt" output2.txt
if ERRORLEVEL 1 goto ERROR
echo Ok2

echo running 3nd test
%PROGRAM% < 999symb.txt > "%TEMP%\temp.txt" 
fc.exe "%TEMP%\temp.txt" output99.txt
if ERRORLEVEL 1 goto ERROR
echo Ok3

echo OK
exit 0

:ERROR 
echo Program testing failed
timeout /t 5
exit 1