
@echo off
echo Starting(0/5)
cd C:\
mkdir "Backup Rejestru"
echo Done(1/5)
reg export HKLM "C:\Backup Rejestru\HKLM.Reg" /y
echo Done(2/5)
reg add HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR /t REG_DWORD /v value /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /t REG_DWORD /v "GPU Priority" /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /t REG_DWORD /v Priority /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /t REG_SZ /v "Scheduling Category" /d High /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /t REG_DWORD /v NetworkThrottlingIndex /d 0xffffffff /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /t REG_DWORD /v SystemResponsiveness /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /t REG_DWORD /v NoLazyMode /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /t REG_DWORD /v AlwaysOn /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /t REG_SZ /v "Latency Sensitive" /d True /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /t REG_SZ /v "SFIO Priority" /d High /f
echo Done(3/5)
bcdedit /set useplatformclock No
bcdedit /set useplatformtick No
bcdedit /set disabledynamictick Yes
bcdedit /set tscsyncpolicy Enhanced
echo Done(4/5)
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 95533644-e700-4a79-a56c-a89e8cb109d9
powercfg -changename 95533644-e700-4a79-a56c-a89e8cb109d9 SPEED
powercfg -setactive 95533644-e700-4a79-a56c-a89e8cb109d9
echo[
echo Done(5/5)
echo All operations completed successfully. Chuju.
pause >nul 
