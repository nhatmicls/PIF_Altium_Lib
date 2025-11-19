@echo off
setlocal enabledelayedexpansion
REM Batch script to copy all .IntLib files from src subdirectories to release folder
REM This will overwrite existing files in the release folder

echo ========================================
echo Copying .IntLib files to release folder
echo ========================================
echo.

REM Create release folder if it doesn't exist
if not exist "release" (
    echo Creating release folder...
    mkdir "release"
    echo.
)

REM Counter for copied files
set count=0

REM Loop through all .IntLib files in src directory and subdirectories
for /r "src" %%f in (*.IntLib) do (
    echo Copying: %%~nxf
    echo From: %%~dpf
    copy /Y "%%f" "release\%%~nxf" >nul
    if errorlevel 1 (
        echo Status: FAILED to copy
    ) else (
        set /a count+=1
        echo Status: Successfully copied
    )
    echo.
)

echo ========================================
echo Copy operation completed!
echo Total files copied: %count%
echo ========================================
echo.
echo.

REM Run verification automatically
echo Starting verification process...
echo.
call VerifyRelease.bat
