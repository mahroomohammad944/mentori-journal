@echo off
setlocal
set "APP=%~dp0..\app\mentori-journal.html"
set "PROFILE=%LOCALAPPDATA%\MentoriJournal\EdgeProfile"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" (
  start "" "%EDGE%" --app="file:///%APP:\=/%" --user-data-dir="%PROFILE%" --disable-features=Translate
) else (
  start "" "%APP%"
)
endlocal
