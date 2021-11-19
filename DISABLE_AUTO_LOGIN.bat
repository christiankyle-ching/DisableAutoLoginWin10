@echo OFF

cd %~dp0

@REM BACKUP - Commented because it's the same for every machine
@REM reg export HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch backup.reg

@REM Enable UI Login
echo DISABLING AUTO-LOGIN...
echo.
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch /v Enabled /d 1 /t REG_DWORD /f
echo.
echo ------------------------------

echo SETTING PERMISSIONS...
echo.
setacl -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch" -ot reg -actn setprot -op "dacl:p_nc;sacl:p_nc"
setacl -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch" -ot reg -actn setowner -ownr "n:Administrators" 
setacl -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch" -ot reg -actn ace -ace "n:Administrators;p:full" 
setacl -on "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\UserSwitch" -ot reg -actn ace -ace "n:System;p:set_val;m:deny"
echo.
echo ------------------------------

pause