@echo off
title PrismLauncher (Shomo) (8.0)
echo Welcome to the PrismLauncher Downloader that has Java included without installing it.
echo.
echo This downloader was made by the Shomo Team at https://dsc.gg/moonnn
echo.

set p=https://github.com/PrismLauncher/PrismLauncher/releases/download/8.0/PrismLauncher-Windows-MSVC-Portable-8.0.zip
set t=C:\Users\%USERNAME%\AppData\Local\Temp\Pl.zip
set "j8=https://www.dl.dropboxusercontent.com/scl/fi/xsrml5jco2e9cwkmkswf0/jre-1.8.zip?rlkey=6iesnxm6dsw2009nays7u1z58&dl=0"
set j17=https://files.catbox.moe/z8eedq.zip
set t8=C:\Users\%USERNAME%\AppData\Local\Temp\J8.zip
set t17=C:\Users\%USERNAME%\AppData\Local\Temp\J17.zip

mkdir PrismLauncher

echo Downloading the latest version of PrismLauncher...
curl -s -o "%t%" -L "%p%"
if %errorlevel% neq 0 (
  echo Failed to download the PrismLauncher zip.
  exit /b 1
)

echo Extracting PrismLauncher...
powershell -command "Expand-Archive -Path '%t%' -DestinationPath PrismLauncher -Force" >nul 2>&1
if %errorlevel% neq 0 (
  echo Failed to extract the PrismLauncher zip.
  exit /b 1
)

echo PrismLauncher has been successfully downloaded and extracted.
echo Downloading Java...

curl -s -o "%t8%" -L "%j8%"
curl -s -o "%t17%" -L "%j17%"

echo Extracting Java...
powershell -command "Expand-Archive -Path '%t8%' -DestinationPath PrismLauncher -Force"
powershell -command "Expand-Archive -Path '%t17%' -DestinationPath PrismLauncher -Force"

echo Cleaning up...
del "%t%"
del "%t8%"
del "%t17%"

echo.
timeout 1 >nul
echo Seems like we're done downloading the portable version of PrismLauncher. Press any key to exit this CMD Window.
pause>nul
