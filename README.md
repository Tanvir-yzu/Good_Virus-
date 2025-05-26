          
# Vairus Development Toolkit

A collection of utility scripts to streamline development workflows for web projects.

## Overview

This toolkit includes three batch scripts designed to automate common development tasks:

- **github.bat**: Simplifies Git operations for version control
- **html.bat**: Quickly starts a local web server for static HTML files
- **django.bat**: Manages Django development environment and server

## Requirements

- **Windows OS**: All scripts are designed for Windows command prompt
- **Git**: Required for github.bat (must be installed and in PATH)
- **Python**: Required for html.bat and django.bat (Python 3.8+ recommended)
- **Terminal with ANSI color support**: For colored output in scripts

## Installation

No installation required. Simply place these scripts in your project directory.

## Usage

### GitHub Script (github.bat)

Automates the Git add, commit, and push workflow with a user-friendly interface.

```bash
github.bat
```

**Features:**
- Automatically stages all changes (`git add .`)
- Prompts for commit message (uses default if none provided)
- Prompts for branch name (defaults to main)
- Provides colored feedback throughout the process

### HTML Server Script (html.bat)

Quickly starts a Python-based HTTP server for testing static HTML files.

```bash
html.bat [port]
```

**Features:**
- Starts a local web server using Python's built-in HTTP server
- Optional port specification (defaults to 8000)
- Automatically detects index.html
- Provides colored feedback and server URL
- Validates Python installation

### Django Script (django.bat)

Manages Django development environment and server with comprehensive error handling.

```bash
django.bat
```

**Features:**
- Checks for Python installation
- Creates and activates virtual environment if needed
- Installs Django if not already installed
- Prompts for project directory (defaults to 'fileName')
- Validates project structure (checks for manage.py)
- Prompts for port number (defaults to 8000)
- Starts the Django development server
- Comprehensive error handling throughout

## How They Work Together

These scripts are designed to work together in a typical web development workflow:

1. Use **django.bat** to start your Django development server for backend development
2. Use **html.bat** for quick testing of static HTML files
3. Use **github.bat** to commit and push your changes to version control

## Customization

Each script can be customized by editing the batch files:

- **github.bat**: Change default branch name or customize commit messages
- **html.bat**: Modify default port or target HTML file
- **django.bat**: Adjust virtual environment name or Python requirements

## Troubleshooting

### Common Issues

- **Color codes not displaying**: Ensure your terminal supports ANSI color codes
- **'Python is not recognized'**: Ensure Python is installed and added to your PATH
- **'Git is not recognized'**: Ensure Git is installed and added to your PATH
- **Port already in use**: Change the port number when prompted

## License

Feel free to modify and distribute these scripts as needed for your projects.

