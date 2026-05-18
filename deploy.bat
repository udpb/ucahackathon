@echo off
cd /d "%~dp0"
git add .
for /f "tokens=*" %%i in ('powershell -command "Get-Date -Format \"yyyy-MM-dd HH:mm\""') do set DATETIME=%%i
git commit -m "update: %DATETIME%"
git push origin main
echo.
echo ✅ 배포 완료! 잠시 후 사이트에 반영됩니다.
pause