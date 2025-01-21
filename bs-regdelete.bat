@ECHO OFF
REGEDIT /s %LOCALAPPDATA%\BlueStacks\BstHdAndroidSvc.REG
REGEDIT /s %LOCALAPPDATA%\BlueStacks\BstHdLogRotatorSvc.REG
REGEDIT /s %LOCALAPPDATA%\BlueStacks\BstHdUpdaterSvc.REG
REGEDIT /s %LOCALAPPDATA%\BlueStacks\BsAgent32.REG
REGEDIT /s %LOCALAPPDATA%\BlueStacks\BsAgent64.REG

REGEDIT /E "%LOCALAPPDATA%\BlueStacks\BstHdAndroidSvc.REG" "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdAndroidSvc"
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdAndroidSvc" /REG:64 /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdAndroidSvc" /REG:32 /f
REGEDIT /E "%LOCALAPPDATA%\BlueStacks\BstHdLogRotatorSvc.REG" "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdLogRotatorSvc"
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdLogRotatorSvc" /REG:64 /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdLogRotatorSvc" /REG:32 /f
REGEDIT /E "%LOCALAPPDATA%\BlueStacks\BstHdUpdaterSvc.REG" "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdUpdaterSvc"
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdUpdaterSvc" /REG:64 /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\services\BstHdUpdaterSvc" /REG:32 /f

setlocal
set rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run
set rvalue="BlueStacks Agent"
set regexe=%SystemRoot%\System32\Reg.exe

setlocal enabledelayedexpansion
for /F "skip=1 tokens=4 delims=\ " %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap1=%%z
)
for /F "skip=1 tokens=2 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap2=%%z
)
for /F "skip=1 tokens=3 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap3=%%z
)
for /F "skip=1 tokens=4 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap4=%%z
)
set regfile="%LOCALAPPDATA%\BlueStacks\BsAgent64.REG"
echo REGEDIT4>%regfile%
echo.>>%regfile%
echo [%rkey%]>>%regfile%
echo %rvalue%^="%rdatap1%\\%rdatap2%\\%rdatap3%\\%rdatap4%">>%regfile%
echo.>>%regfile%
endlocal
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent" /f

setlocal
set rkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
set rvalue="BlueStacks Agent"
set regexe=%SystemRoot%\System32\Reg.exe

setlocal enabledelayedexpansion
for /F "skip=1 tokens=4 delims=\ " %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap1=%%z
)
for /F "skip=1 tokens=2 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap2=%%z
)
for /F "skip=1 tokens=3 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap3=%%z
)
for /F "skip=1 tokens=4 delims=\" %%z in ('reg QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent"') DO (
SET rdatap4=%%z
)
set regfile="%LOCALAPPDATA%\BlueStacks\BsAgent32.REG"
echo REGEDIT4>%regfile%
echo.>>%regfile%
echo [%rkey%]>>%regfile%
echo %rvalue%^="%rdatap1%\\%rdatap2%\\%rdatap3%\\%rdatap4%">>%regfile%
echo.>>%regfile%
endlocal
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlueStacks Agent" /f