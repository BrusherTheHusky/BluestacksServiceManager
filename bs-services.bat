@echo off
echo.
echo     Welcome to the BlueStacks Service Manager
echo           Developed by the simpleMODteam
echo   ______________________________________________
echo.
echo                Launching BlueStacks
"%PROGRAMFILES(X86)%\BlueStacks\HD-StartLauncher.exe" 2>nul
"%PROGRAMFILES%\BlueStacks\HD-StartLauncher.exe" 2>nul

ping 127.0.0.1 -n 15 -w 1000 >nul 2>nul
echo.       
:choice
set /P c=`  When you want to close BlueStacks press Enter 
if /I "%c%" EQU "" goto :closeBS

:closeBS
echo.
echo            Closing Bluestacks Services
taskkill /IM "HD-StartLauncher.exe" /F >nul 2>nul
taskkill /IM "HD-BlockDevice.exe" /F >nul 2>nul
taskkill /IM "HD-Frontend.exe" /F >nul 2>nul
taskkill /IM "HD-Network.exe" /F >nul 2>nul
taskkill /IM "HD-Service.exe" /F >nul 2>nul
taskkill /IM "HD-sharedFolder.exe" /F >nul 2>nul
taskkill /IM "HD-UpdaterService.exe" /F >nul 2>nul
taskkill /IM "HD-RunApp.exe" /F >nul 2>nul
taskkill /IM "HD-Agent.exe" /F >nul 2>nul