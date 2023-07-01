@echo off
REM MODE 320, 50
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

ECHO [!date! - !time!] Beginnen mit Installation...
ECHO [!date! - !time!] Verzeichnisse werden erstellt...

md "RevelationPlusPlus"
md "RevelationPlusPlus\libraries"
md "RevelationPlusPlus\minecraft\config"
md "RevelationPlusPlus\minecraft\config\alarms\assets\energycontrol\sounds"
md "RevelationPlusPlus\minecraft\config\immersiverailroading"
md "RevelationPlusPlus\minecraft\config\buildcraft"
md "RevelationPlusPlus\minecraft\config\brandon3055"
md "RevelationPlusPlus\minecraft\config\aroma1997"
md "RevelationPlusPlus\minecraft\config\projectE"
md "RevelationPlusPlus\minecraft\config\enderio"
md "RevelationPlusPlus\minecraft\config\cofh\thermalexpansion"
md "RevelationPlusPlus\minecraft\config\cofh\thermalfoundation"
md "RevelationPlusPlus\minecraft\config\cofh\world"
md "RevelationPlusPlus\minecraft\config\CustomMainMenu"
md "RevelationPlusPlus\minecraft\mods"
md "RevelationPlusPlus\minecraft\marytts"
md "RevelationPlusPlus\minecraft\resourcepacks"
md "RevelationPlusPlus\minecraft\scripts"
md "RevelationPlusPlus\patches"
md "RevelationPlusPlus\jarmods"

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

COLOR 0A

ECHO [!date! - !time!] Installation abgeschlossen!

CALL :MsgBox "Soll Revelation++ nun gestartet werden?"  "VBYesNo+VBQuestion" "Installation abgeschlossen!"
IF errorlevel 7 (
	DEL Installer.bat
	EXIT /B
)
ELSE IF errorlevel 6 (
	CD..
	START MultiMC.exe -l "RevelationPlusPlus"
	DEL Installer.bat
	EXIT /B
)

:MsgBox prompt type title
    SETLOCAL enableextensions
    SET "tempFile=Installation.vbs"
    >"%tempFile%" ECHO(WScript.Quit msgBox("%~1",%~2,"%~3") & cscript //nologo //e:vbscript "%tempFile%"
    SET "exitCode=%errorlevel%" & DEL "%tempFile%" >NUL 2>NUL
    ENDLOCAL & EXIT /B %exitCode%
