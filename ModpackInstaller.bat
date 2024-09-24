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

md "RevelationPlusPlus"

CD RevelationPlusPlus

SETLOCAL enabledelayedexpansion
powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/version.txt -Outfile version.txt"
powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/modpack_files.txt -TimeoutSec 0 -Outfile modpack_files.txt"

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

md "libraries"
md "minecraft\config"
md "minecraft\config\alarms\assets\energycontrol\sounds"
md "minecraft\config\immersiverailroading"
md "minecraft\config\buildcraft"
md "minecraft\config\brandon3055"
md "minecraft\config\aroma1997"
md "minecraft\config\projectE"
md "minecraft\config\enderio"
md "minecraft\config\forestry"
md "minecraft\config\cofh\thermalexpansion"
md "minecraft\config\cofh\thermalfoundation"
md "minecraft\config\cofh\world"
md "minecraft\config\CustomMainMenu"
md "minecraft\config\Guide-API"
md "minecraft\config\gulliverreborn"
md "minecraft\config\rftools"
md "minecraft\config\InvTweaks"
md "minecraft\config\jei"
md "minecraft\config\Galacticraft"
md "minecraft\config\Exoplanets"
md "minecraft\config\GalaxySpace"
md "minecraft\config\valkyrielib"
md "minecraft\config\opencomputers"
md "minecraft\config\thebetweenlands"
md "minecraft\config\toughasnails"
md "minecraft\config\quarryplus"
md "minecraft\config\AsmodeusCore"
md "minecraft\config\simplyjetpacks"
md "minecraft\mods"
md "minecraft\marytts"
md "minecraft\resourcepacks"
md "minecraft\scripts"
md "minecraft\journeymap\config\5.7"
md "patches"
md "jarmods"

ECHO [!date! - !time!] Dateien werden angefordert und heruntergeladen...

SET /a File = 1

FOR /F "tokens=1,2" %%x IN (modpack_files.txt) DO (
	ECHO [!date! - !time!] [!File! von %Lines%] %%y wird von %%x heruntergeladen.
	powershell -Command "Invoke-WebRequest -Uri %%x -Outfile %%y -TimeoutSec 0"
	SET /A File += 1
)

CD..\..\icons
powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/main/4387a02d-7f5a-465a-bf2b-da4df1ae86d0.png -Outfile icon.png"
CD..\instances\RevelationPlusPlus\minecraft\config

ECHO [!date! - !time!] Aufräumen...

RENAME "NetherendingOres.cfg" "Netherending Ores.cfg"

CD..\..
DEL modpack_files.txt
DEL version.txt



CD..

COLOR 0A

ECHO [!date! - !time!] Installation abgeschlossen!

CALL :MsgBox "Soll Revelation++ nun gestartet werden?"  "VBYesNo+VBQuestion" "Installation abgeschlossen!"
IF errorlevel 7 (
	DEL ModpackInstaller.bat
	EXIT /B
)
IF errorlevel 6 (
	CD..
	START "" MultiMC.exe -l "RevelationPlusPlus"
	CD instances
	DEL ModpackInstaller.bat
	EXIT /B
)

:MsgBox prompt type title
    SETLOCAL enableextensions
    SET "tempFile=Installation.vbs"
    >"%tempFile%" ECHO(WScript.Quit msgBox("%~1",%~2,"%~3") & cscript //nologo //e:vbscript "%tempFile%"
    SET "exitCode=%errorlevel%" & DEL "%tempFile%" >NUL 2>NUL
    ENDLOCAL & EXIT /B %exitCode%
