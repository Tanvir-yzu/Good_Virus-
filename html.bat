@echo off
setlocal enabledelayedexpansion

:: Define ANSI color codes
set "COLOR_RED=[31m"
set "COLOR_GREEN=[32m"
set "COLOR_YELLOW=[33m"
set "COLOR_CYAN=[36m"
set "COLOR_RESET=[0m"

echo %COLOR_CYAN%===================================%COLOR_RESET%
echo %COLOR_GREEN%HTML Server start ..%COLOR_RESET%
echo %COLOR_CYAN%===================================%COLOR_RESET%
echo.

REM Default port and HTML file
set PORT=8000
set HTML_FILE=index.html

REM Check if a port was specified as an argument
if not "%1"=="" (
    set PORT=%1
)

echo %COLOR_CYAN%===================================%COLOR_RESET%
echo Starting local web server on port !PORT!...
echo Server will be available at: %COLOR_YELLOW%http://localhost:!PORT!/!HTML_FILE!%COLOR_RESET%
echo Press Ctrl+C to stop the server
echo %COLOR_CYAN%===================================%COLOR_RESET%
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo %COLOR_RED%Error: Python is not installed or not in PATH%COLOR_RESET%
    echo Please install Python from https://www.python.org/downloads/ and try again
    goto :cleanup
)

REM Open the browser to the HTML file
::tart "" "http://localhost:!PORT!/!HTML_FILE!"

REM Start the server
echo %COLOR_GREEN%Server start successful...%COLOR_RESET%
echo %COLOR_CYAN%===================================%COLOR_RESET%
python -m http.server !PORT!

:cleanup
endlocal
exit /b