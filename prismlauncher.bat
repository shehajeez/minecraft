@echo off
title PrismLauncher (Shomo) (8.0)
echo Welcome to the PrismLauncher Downloader that has Java included without installing it.
echo.
echo This downloader was made by the Shomo Team at https://dsc.gg/moonnn
echo.

set p=https://github.com/PrismLauncher/PrismLauncher/releases/download/8.0/PrismLauncher-Windows-MSVC-Setup-8.0.exe
set t=C:\Users\%USERNAME%\AppData\Local\Temp\Pl.zip
set j8=https://download1529.mediafire.com/d503d3iy6bwgAs1lY08D3AS7gIcDDh-UX44s3azrn6pvAlENOfLW_QURI9F2V7FHwbYaPzUR1R4jWZ2GnXwmN6gVthzRP_qcu50TuvrxjCNLaE6y_3AbfpvYqzq667k_ZyxiE1qQ_ibEMjGNM0h8mYbEFG1t1hTkHX0PbcgwC9Rn/qlpz43f47wvdbns/jre-1.8.zip
set j17=https://www.udrop.com/KSjr/jdk-17.zip?download_token=05fbe1967eaf3ba782ca8d6066acdc1ff70b436786ae669a8fe0122e06895c96
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
echo We're done downloading PrismLauncher and Java. Press any key to exit.
pause>nul
