@echo off
title PrismLauncher (Prisma Team)
echo Welcome to the PrismLauncher Downloader that has Java included without installing it.
echo.
echo This downloader was made by the Prisma Team at https://dsc.gg/prismaaa
echo.

set p=https://github.com/PrismLauncher/PrismLauncher/releases/download/7.2/PrismLauncher-Windows-MSVC-Portable-7.2.zip
set t=%TEMP%\Pl.zip

set j8=https://www.udrop.com/KShG/jre-1.8.zip?download_token=3645d3eb4d193996ceec1dc55b1476cf4c2798299124935bfa1c42b5599a1a04
set j17=https://www.udrop.com/KSjr/jdk-17.zip?download_token=05fbe1967eaf3ba782ca8d6066acdc1ff70b436786ae669a8fe0122e06895c96
set t8=%TEMP%\J8.zip
set t17=%TEMP%\J17.zip

mkdir PrismLauncher

echo Downloading the latest version of PrismLauncher.
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
echo We're done downloading PrismLauncher and Java. Press any key to exit.
pause>nul
