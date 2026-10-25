@echo off
title raywolf desgins - GitHub Uploader
echo ======================================================================
echo           raywolf desgins - Push Repository to GitHub
echo ======================================================================
echo.
echo If you created an empty repo on GitHub (e.g. https://github.com/yourname/soda.git),
echo paste the URL below to push automatically:
echo.
set /p REPO_URL="Paste GitHub Repository URL: "

if "%REPO_URL%"=="" (
    echo.
    echo [!] No repository URL entered.
    echo If you want to upload manually via browser:
    echo Just open your GitHub repo in browser and drag & drop the files!
    echo.
    pause
    exit /b
)

echo.
echo [*] Setting remote origin to %REPO_URL% ...
"C:\Users\LENOVO\mingit\cmd\git.exe" remote remove origin >nul 2>&1
"C:\Users\LENOVO\mingit\cmd\git.exe" remote add origin %REPO_URL%
"C:\Users\LENOVO\mingit\cmd\git.exe" branch -M main

echo [*] Pushing branch 'main' to GitHub ...
"C:\Users\LENOVO\mingit\cmd\git.exe" push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] Your repository has been uploaded to GitHub!
) else (
    echo.
    echo [NOTE] If prompted for authentication, log in with your GitHub Personal Access Token.
    echo Or upload the files directly via github.com's "Upload files" button.
)
echo.
pause
