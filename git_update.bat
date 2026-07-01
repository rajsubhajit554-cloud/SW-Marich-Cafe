@echo off
title Git Update Helper
echo =========================================
echo       Git Repository Update Helper       
echo =========================================
echo.

:: Check current git status
echo [1] Checking status...
git status
echo.

:: Prompt for commit message
set "commit_msg="
set /p commit_msg="Enter commit message (press Enter for 'Update website'): "

:: Default message if empty
if "%commit_msg%"=="" set commit_msg=Update website

echo.
echo [2] Staging all files...
git add .

echo.
echo [3] Committing changes...
git commit -m "%commit_msg%"

echo.
echo [4] Pushing to GitHub...
git push origin main

echo.
echo =========================================
echo Update Complete!
echo =========================================
pause
