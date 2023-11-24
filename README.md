**USAGE**
Officially open-source! From now on every thing in this repository will be open-source.

prismlauncher.bat: Windows Batch Script
This is a downloader for a popular custom Launcher for Minecraft called PrismLauncher. PrismLauncher by default doesn't have Java included, but we at the Prisma Team have added it as a folder in PrismLauncher. You can select JRE 1.8 for 1.12 and down and 17 for 1.17 and up.
To select your Java version just click browse on the setup window of PrismLauncher and choose any Java folder but REMEMBER you'll have to choose Java 17 for versions 1.17 and up to play those versions.

What does "prismlauncher.bat" (PrismLauncher Downloader/Installer) do?

PrismLauncher Installation:

Step 1: Download PrismLauncher:
The PrismLauncher zip is downloaded from the official GitHub repository.
The downloaded file is stored temporarily as Pl.zip. (in %TEMP%)

Step 2: The zip extraction:
The downloaded PrismLauncher is extracted into a folder named "PrismLauncher." in the directory where the downloader is in.

Step 3: Download Java:
Java versions 8 and 17 are downloaded.
These Java zips are stored temporarily as J8.zip and J17.zip. (in %TEMP%)

Step 4: Zip extraction 2:
Both Java versions are extracted into the "PrismLauncher" folder.

Step 5: Clean Up:
Temporary download zips (Pl.zip, J8.zip, and J17.zip) are deleted.

Step 6: Installation Complete:
A message shows that the installation has been finished and that the user can press any key to exit the CMD Window.
