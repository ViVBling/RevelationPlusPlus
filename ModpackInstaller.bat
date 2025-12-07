@echo off 
setlocal enabledelayedexpansion

REM -------------------------------
REM 1. ZIP herunterladen
REM -------------------------------
set ZIPURL=https://codeload.github.com/ViVBling/RevelationPlusPlus/zip/refs/heads/main
set ZIPNAME=RevelationPlusPlus.zip

echo Lade %ZIPNAME% herunter...
curl -L --progress-bar -o "%ZIPNAME%" "%ZIPURL%"

REM -------------------------------
REM 2. ZIP entpacken
REM -------------------------------
echo Entpacke %ZIPNAME%...
tar -xf "%ZIPNAME%"

REM -------------------------------
REM 3. Ordner umbenennen
REM -------------------------------
echo Benenne Verzeichnisse...
if exist "RevelationPlusPlus-main" (
    echo Benenne Ordner in Revelation++ um...
    ren "RevelationPlusPlus-main" "Revelation++"
) else (
    echo Ordner RevelationPlusPlus-main nicht gefunden!
    exit /b 1
)

REM -------------------------------
REM 4. Inhalte aus Unterordner verschieben
REM -------------------------------
echo Inhalte verschieben...
cd "Revelation++"
if exist "RevelationPlusPlus-main" (
    echo Verschiebe Inhalte aus RevelationPlusPlus-main in den Hauptordner...
    move "RevelationPlusPlus-main\*" .
    rmdir /s /q "RevelationPlusPlus-main"
)
cd ..

REM -------------------------------
REM 5. ZIP-Datei löschen
REM -------------------------------
echo Nicht mehr benötigte Dateien löschen...
if exist "%ZIPNAME%" (
    echo Lösche ZIP-Datei...
    del /f /q "%ZIPNAME%"
)

REM -------------------------------
REM 6. modpack_files.txt herunterladen und verarbeiten
REM -------------------------------
echo Modliste herunterladen...
set FILELISTURL=https://raw.githubusercontent.com/ViVBling/RevelationPlusPlus/refs/heads/main/modpack_files.txt
set FILELIST=temp_modpack_files.txt
set TARGETROOT=Revelation++

echo Lade die Liste der Modpack-Dateien herunter...
curl -L --progress-bar -o "%FILELIST%" "%FILELISTURL%"

REM -------------------------------
REM 7. Zählen der gültigen Zeilen für Statusanzeige
REM -------------------------------
echo Status wird abgefragt...
set /a count=0
for /f "tokens=1,* delims= " %%A in (%FILELIST%) do (
    set "TMPURL=%%~A"
    set "TMPTARGET=%%~B"
    if not "!TMPURL!"=="" if not "!TMPTARGET!"=="" if "!TMPURL:~0,1!" NEQ "#" set /a count+=1
)

REM -------------------------------
REM 8. Dateien herunterladen mit Fortschrittsbalken
REM -------------------------------
echo Modpack wird heruntergeladen...
set /a index=0
for /f "tokens=1,* delims= " %%A in (%FILELIST%) do (
    set "FILEURL=%%~A"
    set "RELTARGET=%%~B"

    REM Nur gültige Zeilen verarbeiten
    if defined FILEURL if defined RELTARGET (
        if "!FILEURL:~0,1!" NEQ "#" (
            set /a index+=1
            set "TARGET=%TARGETROOT%\!RELTARGET!"

            REM Zielverzeichnis erstellen, falls nötig
            for %%D in ("!TARGET!") do (
                set "DIR=%%~dpD"
                if not exist "!DIR!" mkdir "!DIR!"
            )

            REM Download mit Fortschrittsbalken
            echo.
            echo Lade Datei !index! von !count!: !FILEURL!
            curl -L --progress-bar -o "!TARGET!" "!FILEURL!"
            echo Datei !index! abgeschlossen.
        )
    )
)

REM -------------------------------
REM 9. Aufräumen
REM -------------------------------
echo Aufräumen...
del /f /q "%FILELIST%"

echo.
echo Alle Downloads abgeschlossen!
REM -------------------------------
REM 10. Benutzerfragen per MessageBox (VBScript)
REM -------------------------------

echo Set objShell = CreateObject("WScript.Shell") > msgbox.vbs
echo result = MsgBox("Möchtest Du Revelation++ jetzt starten?", 4 + 32, "Installation abgeschlossen") >> msgbox.vbs
echo WScript.Quit result >> msgbox.vbs

cscript //nologo msgbox.vbs
set MSGRESULT=%errorlevel%

del /f /q msgbox.vbs

REM MSGRESULT = 6 = Ja
REM MSGRESULT = 7 = Nein

if "%MSGRESULT%"=="6" (
    echo Starte Revelation++...
    cd..
    START /B "" "MultiMC.exe" -l "Revelation++" -s ""
    exit /b
)

echo Revelation++ wurde nicht gestartet.
exit /b
