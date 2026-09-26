@echo off
setlocal
set "APP=AltShift4Snip.exe"
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

taskkill /f /im "%APP%" >nul 2>&1
if exist "%STARTUP%\%APP%" del /f /q "%STARTUP%\%APP%"

if exist "%STARTUP%\%APP%" (
    echo Uninstall failed. Close the shortcut and try again.
    pause
    exit /b 1
)

echo Uninstalled. Alt + Shift + 4 is no longer registered by this app.
pause
