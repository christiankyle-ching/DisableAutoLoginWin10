@echo OFF

cd %~dp0

echo RESTORING BACKUP...
reg import backup.reg
echo.
echo ------------------------------

pause
