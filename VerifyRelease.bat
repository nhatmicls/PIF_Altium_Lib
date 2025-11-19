@echo off
setlocal enabledelayedexpansion
REM Script to verify that copied .IntLib files match the originals

echo ========================================
echo Verifying .IntLib files in release folder
echo ========================================
echo.

set match=0
set mismatch=0
set missing=0

REM Loop through all .IntLib files in src directory
for /r "src" %%f in (*.IntLib) do (
    set "source=%%f"
    set "filename=%%~nxf"
    set "target=release\%%~nxf"

    echo Checking: !filename!

    REM Check if file exists in release folder
    if exist "!target!" (
        REM Compare file sizes first (quick check)
        for %%a in ("!source!") do set size1=%%~za
        for %%b in ("!target!") do set size2=%%~zb

        if !size1! equ !size2! (
            REM Use fc (file compare) for binary comparison
            fc /b "!source!" "!target!" >nul 2>&1
            if errorlevel 1 (
                echo Status: MISMATCH - Files are different!
                set /a mismatch+=1
            ) else (
                echo Status: MATCH - Files are identical
                set /a match+=1
            )
        ) else (
            echo Status: MISMATCH - Different file sizes ^(!size1! vs !size2! bytes^)
            set /a mismatch+=1
        )
    ) else (
        echo Status: MISSING - File not found in release folder
        set /a missing+=1
    )
    echo.
)

echo ========================================
echo Verification Results:
echo ========================================
echo Matching files:    !match!
echo Mismatched files:  !mismatch!
echo Missing files:     !missing!
echo ========================================

if !mismatch! gtr 0 (
    echo WARNING: Some files do not match!
) else if !missing! gtr 0 (
    echo WARNING: Some files are missing!
) else (
    echo SUCCESS: All files match perfectly!
)

echo.
pause
