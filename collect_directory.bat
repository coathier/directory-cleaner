@echo off
setlocal enabledelayedexpansion

REM Check if the correct number of arguments is provided
if "%~1"=="" (
    echo Usage: %0 ^<parent_directory^>
    exit /b 1
)

set "parent_directory=%~1"

set parent_directory=!parent_directory:.\=!
echo !parent_directory!

REM Check if the parent directory exists
if not exist "%parent_directory%" (
    echo Parent directory does not exist: %parent_directory%
    exit /b 1
)

REM Move files from subdirectories to parent with subdirectory path prefix
for /r "%parent_directory%" %%F in (*) do (
    set file=%%F
    set file=!file:*\%parent_directory%=!
    set file=!file:\=_!

    set dir=%%F
    set dir=!dir:%parent_directory%=💀!
    for /f "tokens=1,* delims=💀" %%a in ("!dir!") do set "dir=%%a"
    path=!dir!!parent_directory!\!file!

    REM Checks if the directory exists
    if not exist "!dir!!parent_directory!" (
        echo Parent directory does not exist: !dir!!parent_directory!
        exit /b 1
    )

    move "%%F" "!path!"
)

REM Remove all subdirectories
for /d %%D in (".\%parent_directory%*") do (
    rmdir %%D /s /q
)

echo Files placed into !dir!!parent_directory!

endlocal
