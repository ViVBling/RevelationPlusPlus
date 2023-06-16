@echo off
MODE 234, 50
TITLE Revelation++ Installer

COLOR 09

ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO ^+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------^+
ECHO ^| ########  ######## ##     ## ######## ##          ###    ######## ####  #######  ##    ##                  #### ##    ##  ######  ########    ###    ##       ##          ###    ######## ####  #######  ##    ## ^|
ECHO ^| ##     ## ##       ##     ## ##       ##         ## ##      ##     ##  ##     ## ###   ##   ##     ##       ##  ###   ## ##    ##    ##      ## ##   ##       ##         ## ##      ##     ##  ##     ## ###   ## ^|
ECHO ^| ##     ## ##       ##     ## ##       ##        ##   ##     ##     ##  ##     ## ####  ##   ##     ##       ##  ####  ## ##          ##     ##   ##  ##       ##        ##   ##     ##     ##  ##     ## ####  ## ^|
ECHO ^| ########  ######   ##     ## ######   ##       ##     ##    ##     ##  ##     ## ## ## ## ###### ######     ##  ## ## ##  ######     ##    ##     ## ##       ##       ##     ##    ##     ##  ##     ## ## ## ## ^|
ECHO ^| ##   ##   ##        ##   ##  ##       ##       #########    ##     ##  ##     ## ##  ####   ##     ##       ##  ##  ####       ##    ##    ######### ##       ##       #########    ##     ##  ##     ## ##  #### ^|
ECHO ^| ##    ##  ##         ## ##   ##       ##       ##     ##    ##     ##  ##     ## ##   ###   ##     ##       ##  ##   ### ##    ##    ##    ##     ## ##       ##       ##     ##    ##     ##  ##     ## ##   ### ^|
ECHO ^| ##     ## ########    ###    ######## ######## ##     ##    ##    ####  #######  ##    ##                  #### ##    ##  ######     ##    ##     ## ######## ######## ##     ##    ##    ####  #######  ##    ## ^|
ECHO ^+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------^+
ECHO.

SETLOCAL enabledelayedexpansion
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/version.txt -Outfile version.txt"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/modpack_files.txt -TimeoutSec 0 -Outfile modpack_files.txt"

ECHO|SET /p=Folgende Modpack-Version wurde gefunden und wird installiert: 
type version.txt
FOR /F %%i IN ('TYPE "modpack_files.txt" ^| FIND /C /V ""') DO SET Lines=%%i
ECHO Anzahl der zu herunterladenden Dateien: %Lines%
ECHO.
ECHO Hinweis: Der Download kann jederzeit mit "STRG+C" abgebrochen werden, falls Fehler auftreten sollten.
ECHO.

COLOR 06

md "RevelationPlusPlus"
md "RevelationPlusPlus\libraries"
md "RevelationPlusPlus\minecraft\config\"
md "RevelationPlusPlus\minecraft\config\immersiverailroading"
md "RevelationPlusPlus\minecraft\mods"
md "RevelationPlusPlus\minecraft\marytts"
md "RevelationPlusPlus\minecraft\resourcepacks"
md "RevelationPlusPlus\minecraft\scripts"
md "RevelationPlusPlus\natives"
md "RevelationPlusPlus\patches"

FOR /F "tokens=1,2" %%x IN (modpack_files.txt) DO (
	echo [!date! - !time!] %%y wird von %%x heruntergeladen.
	powershell -Command "Invoke-WebRequest --% %%x -Outfile %%y -TimeoutSec 0"
)

ECHO [%DATE%-%TIME%] Aufräumen...
DEL modpack_files.txt
DEL version.txt

COLOR 0A

ECHO [%DATE%-%TIME%] Installation abgeschlossen!

PAUSE
