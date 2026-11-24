@echo off
setlocal
set "HERE=%~dp0"
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
start "" "%CHROME%" --allow-file-access-from-files --no-first-run --user-data-dir="%HERE%chrome-profile" "file:///%HERE%index.html"
