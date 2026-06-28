@echo off
setlocal
cd /d "%~dp0"
where python >nul 2>nul || (echo Python was not found in PATH. & exit /b 1)
if /I "%~1"=="--self-test" (
  python codex-instruct.py --help >nul
  if errorlevel 1 exit /b 1
  exit /b 0
)
echo [Codex instruct deploy]
echo This will run: python codex-instruct.py
echo.
python codex-instruct.py
set "CODE=%ERRORLEVEL%"
echo.
echo Finished with exit code %CODE%.
echo Press any key to close this window.
pause >nul
exit /b %CODE%