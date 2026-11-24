@echo off
setlocal
set "HERE=%~dp0"
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" goto nochrome
start "" "%CHROME%" --kiosk --kiosk-printing --use-fake-ui-for-media-stream --allow-file-access-from-files --no-first-run --disable-pinch --overscroll-history-navigation=0 --disable-features=Translate --user-data-dir="%HERE%chrome-profile" "file:///%HERE%index.html#kiosk"
exit /b 0
:nochrome
echo Google Chrome was not found. Please install Chrome first.
pause
