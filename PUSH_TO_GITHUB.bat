@echo off
title Push to Kunal-raywolf/COOL-WEBSITES-IN-MINTUES-
color 0b
echo ======================================================================
echo    Pushing raywolf desgins 3D Soda to GitHub Repository
echo    Target: https://github.com/Kunal-raywolf/COOL-WEBSITES-IN-MINTUES-
echo ======================================================================
echo.

set PATH=%PATH%;C:\Users\LENOVO\mingit\cmd;C:\Users\LENOVO\gh-cli

cd /d "%~dp0"

echo [*] Checking GitHub authentication status...
gh auth status >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [*] A browser window will open to authorize with GitHub.
    echo Press any key when ready to open browser...
    pause >nul
    gh auth login -w -p https
    gh auth setup-git
)

echo.
echo [*] Pushing 'main' to https://github.com/Kunal-raywolf/COOL-WEBSITES-IN-MINTUES-.git ...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ======================================================================
    echo [SUCCESS] Successfully pushed all files to your GitHub repository!
    echo View it at: https://github.com/Kunal-raywolf/COOL-WEBSITES-IN-MINTUES-
    echo ======================================================================
) else (
    echo.
    echo [!] If browser login didn't authenticate, you can enter a GitHub Personal Access Token:
    set /p GHPAT="Paste GitHub Token (or press Enter to cancel): "
    if not "%GHPAT%"=="" (
        git push https://%GHPAT%@github.com/Kunal-raywolf/COOL-WEBSITES-IN-MINTUES-.git main
    )
)

echo.
pause
