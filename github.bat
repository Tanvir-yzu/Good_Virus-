echo off
REM GitHub repository management script

echo ===================================
echo Git Repository Management Script
echo ===================================
call git add .

set /p commit_text=Enter the git commit message: 
if "%commit_text%"=="" (
    call git commit -m "No commit message provided"
) else (
    call git commit -m "%commit_text%"
)
set /p origin_name=Enter the git origin_name : 
if "%origin_name%"=="" (
    call git push origin main
) else (
    call git push origin "%origin_name%"
)
echo.
echo ===================================
echo Script completed
echo ===================================
pause