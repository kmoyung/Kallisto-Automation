@echo off

cd "C:\Users\Kevin\Desktop\RNA-Seq\Kallisto\kallisto"
type NUL > output.txt

setlocal enabledelayedexpansion

set "index=MusGRCm38.idx"
set "input=FirstTest.txt"

@echo Index selected is !index!. Continue?
@echo.
pause

@echo Input files are listed from !input!. The files that will be run are
for /f "tokens=* delims=" %%x in (!input!) do @echo %%x

@echo.
@echo Continue?
pause

for /f "tokens=* delims=" %%x in (FirstTest.txt) do (
	set "output=%%x"
	set "output=!output:~0,-9!"
	for %%F in (!output!) do (
		set "output=%%~nxF"
	)
	@echo quant -i !index! -o !output! -b 100 --single -l 180 -s 20 "%%x" >> output.txt
)

for /f "tokens=* delims=" %%x in (output.txt) do (
	kallisto %%x
	timeout 35
)
 
for /f "tokens=5" %%a in (output.txt) do (
	set name=%%a
	ren "C:\Users\Kevin\Desktop\RNA-Seq\Kallisto\kallisto\"!name!"\abundance.tsv" !name!_abundance.tsv
	)

pause
exit