@echo off
setlocal
set "APP=AltShift4Snip.exe"
set "SOURCE=%~dp0%APP%"
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

if not exist "%SOURCE%" (
    echo Installation failed: keep Install.cmd and AltShift4Snip.exe in the same folder.
    pause
    exit /b 1
)

if not exist "%STARTUP%" mkdir "%STARTUP%"
if errorlevel 1 goto failed

taskkill /f /im "%APP%" >nul 2>&1
copy /y "%SOURCE%" "%STARTUP%\%APP%" >nul
if errorlevel 1 goto failed

start "" "%STARTUP%\%APP%"
if errorlevel 1 goto failed

echo Installed. Press Alt + Shift + 4 to select an area to capture.
echo The shortcut will also start automatically when you sign in.
pause
exit /b 0

:failed
echo Installation failed. Please try again or see README.md.
pause
exit /b 1
