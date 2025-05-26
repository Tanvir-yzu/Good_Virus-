@echo off
echo Starting Django System...

REM Check if Python is installed
where python >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: Python is not installed or not in PATH. Please install Python 3.8+ and add it to PATH.
    pause
    exit /b 1
)

REM Check if virtual environment exists
if not exist "myenv\Scripts\activate.bat" (
    echo ERROR: Virtual environment 'myenv' not found. Creating a new one...
    python -m venv myenv
    if %ERRORLEVEL% neq 0 (
        echo ERROR: Failed to create virtual environment.
        pause
        exit /b 1
    )
)

REM Activate the virtual environment
call myenv\Scripts\activate.bat
if %ERRORLEVEL% neq 0 (
    echo ERROR: Failed to activate virtual environment.
    pause
    exit /b 1
)

REM Check if Django is installed
python -c "import django" >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Django not found. Installing Django...
    pip install django
    if %ERRORLEVEL% neq 0 (
        echo ERROR: Failed to install Django.
        pause
        exit /b 1
    )
)

REM Prompt user for Django project folder name
set /p PROJECT_DIR=Enter the Django project directory (default is 'fileName'): 
if "%PROJECT_DIR%"=="" set PROJECT_DIR=fileName

REM Validate that the project directory exists and contains manage.py
if not exist "%PROJECT_DIR%\manage.py" (
    echo ERROR: Django project directory '%PROJECT_DIR%' or 'manage.py' not found.
    pause
    exit /b 1
)

REM Change to the Django project directory
cd %PROJECT_DIR%
if %ERRORLEVEL% neq 0 (
    echo ERROR: Failed to change to '%PROJECT_DIR%' directory.
    pause
    exit /b 1
)

REM Prompt user for port number
set /p PORT=Enter the port number for the Django server (default is 8000): 
if "%PORT%"=="" set PORT=8000

REM Validate that the port is a number (basic check)
echo %PORT%| findstr /R "^[0-9]*$" >nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: Invalid port number. Please enter a numeric value.
    pause
    exit /b 1
)

REM Run the Django server on the specified port
echo python manage.py runserver
echo Starting Django development server on port %PORT%...
python manage.py runserver %PORT%
if %ERRORLEVEL% neq 0 (
    echo ERROR: Failed to start Django server. Check if port %PORT% is in use or if 'manage.py' is valid.
    pause
    exit /b 1
)
echo Django server started successfully! Access it at http://localhost:%PORT%
pause