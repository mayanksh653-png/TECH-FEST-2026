@echo off
title Push R.I.D.G.E 2026 to GitHub
cd /d "%~dp0"
echo ====================================================
echo Staging, Committing and Uploading R.I.D.G.E 2026 to GitHub
echo ====================================================
echo.
git add .
git commit -m "Update fest name to R.I.D.G.E, add coordinators and contact numbers, set Event 3 duration to 2-3 hours"
echo.
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo ====================================================
    echo SUCCESS! Your code is now live on GitHub!
    echo ====================================================
    echo Open: https://github.com/mayanksh653-png/TECH-FEST-2026/settings/pages
    echo Ensure Source is "Deploy from a branch", Branch is "main" (/root) and click Save!
    echo Your site will be live at:
    echo https://mayanksh653-png.github.io/TECH-FEST-2026/
) else (
    echo.
    echo If GitHub asked you to sign in, please complete the sign-in prompt and re-run.
)
echo.
pause
