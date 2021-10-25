@ECHO OFF
SET /p input=enter file name and its extension: 
ECHO checking file
:LOOP
IF EXIST "%input%" GOTO :download_finished
GOTO :LOOP
:download_finished
ECHO download is finished
TIMEOUT /T 30 /NOBREAK
shutdown /s /f /t 00
