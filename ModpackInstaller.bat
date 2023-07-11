@echo off
MODE 320, 50
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

md "RevelationPlusPlus"

CD RevelationPlusPlus

SETLOCAL enabledelayedexpansion
POWERSHELL -Command "Invoke-WebRequest https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/version.txt -Outfile version.txt"
POWERSHELL -Command "Invoke-WebRequest https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/modpack_files.txt -TimeoutSec 0 -Outfile modpack_files.txt"

ECHO|SET /p=Folgende Modpack-Version wurde gefunden und wird installiert: 
TYPE version.txt
FOR /F %%i IN ('TYPE "modpack_files.txt" ^| FIND /C /V ""') DO SET Lines=%%i
ECHO Anzahl der zu herunterladenden Dateien: %Lines%
ECHO.
ECHO Hinweis: Der Download kann jederzeit mit "STRG+C" abgebrochen werden, falls Fehler auftreten sollten.
ECHO.

COLOR 06

ECHO [!date! - !time!] Beginnen mit Installation...
ECHO [!date! - !time!] Verzeichnisse werden erstellt...

md "libraries"
md "minecraft\config"
md "minecraft\config\alarms\assets\energycontrol\sounds"
md "minecraft\config\jei"
md "minecraft\config\immersiverailroading"
md "minecraft\config\buildcraft"
md "minecraft\config\brandon3055"
md "minecraft\config\aroma1997"
md "minecraft\mods"
md "minecraft\marytts"
md "minecraft\resourcepacks"
md "minecraft\scripts"
md "patches"
md "jarmods"

ECHO [!date! - !time!] Dateien werden angefordert und heruntergeladen...

SET /a File = 1

FOR /F "tokens=1,2" %%x IN (modpack_files.txt) DO (
	ECHO [!date! - !time!] [!File! von %Lines%] %%y wird von %%x heruntergeladen.
	powershell -Command "Invoke-WebRequest %%x -Outfile %%y -TimeoutSec 0"
	SET /A File += 1
)

ECHO [!date! - !time!] Aufräumen...

DEL modpack_files.txt
DEL version.txt

CD..

COLOR 0A

ECHO [!date! - !time!] Installation abgeschlossen!

CALL :MsgBox "Soll Revelation++ nun gestartet werden?"  "VBYesNo+VBQuestion" "Installation abgeschlossen!"
IF errorlevel 7 (
	EXIT /B
)
ELSE IF errorlevel 6 (
	CD..
	START "" MultiMC.exe -l "RevelationPlusPlus"
	EXIT /B
)

:MsgBox prompt type title
    SETLOCAL enableextensions
    SET "tempFile=Installation.vbs"
    >"%tempFile%" ECHO(WScript.Quit msgBox("%~1",%~2,"%~3") & cscript //nologo //e:vbscript "%tempFile%"
    SET "exitCode=%errorlevel%" & DEL "%tempFile%" >NUL 2>NUL
    ENDLOCAL & EXIT /B %exitCode%
