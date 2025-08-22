
@echo off
pause
cd /d "%~dp0"
echo Current directory: %cd%
pause

cd /d "%~dp0"
echo Current directory: %cd%
echo Starting Jekyll development server...
set PATH=%PATH%;C:\Ruby34-x64\bin

echo.
echo Checking Ruby installation...
C:\Ruby34-x64\bin\ruby.exe -v
if %errorlevel% neq 0 (
    echo ERROR: Ruby not found!
    pause
    exit /b 1
)

echo.
echo Checking Gemfile...
if not exist Gemfile (
    echo ERROR: Gemfile not found in current directory!
    echo Make sure you're in the correct project folder.
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
C:\Ruby34-x64\bin\bundle.bat install
if %errorlevel% neq 0 (
    echo ERROR: Bundle install failed!
    pause
    exit /b 1
)

echo.
echo Starting Jekyll server...
C:\Ruby34-x64\bin\bundle.bat exec jekyll serve
if %errorlevel% neq 0 (
    echo ERROR: Jekyll failed to start!
    pause
    exit /b 1
)

echo.
echo Server stopped. Press any key to exit.
pause