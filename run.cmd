@echo off
setlocal

:: Store the script's directory in a variable.
:: The trailing backslash is already included.
set "SCRIPT_DIR=%~dp0"

echo The script's root directory is: %SCRIPT_DIR%
uv run --with fastmcp --with-requirements "%SCRIPT_DIR%\mcp\requirements.txt" fastmcp run "%SCRIPT_DIR%\mcp\servers\gemini_media_gen.py"

endlocal