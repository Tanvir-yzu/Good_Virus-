@echo off
REM This is a test script

echo Changing directory to script location...
pushd %~dp0
echo Current directory: %CD%

echo Opening current directory in VS Code...
call code .

REM Check if VS Code launched successfully (basic check)
REM This is a very basic check and might not be foolproof.
if errorlevel 1 (
    echo VS Code command might have failed or is not in PATH.
) else (
    echo VS Code should be opening...
)

echo Script finished.
pause