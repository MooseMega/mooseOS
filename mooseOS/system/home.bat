@echo off
set buildVersion = 0.0.1
set buildChannel = dev
set messageboardMSGS = 0
goto app.moose.oobe.createfiles
:app.moose.oobe.createflies
cls
rem This folder will be used to store mooseOS files, so that we can easily use them when required.
title Creating folders.
echo [TASK 1]: Creating mooseOS folder (C:\)
cd C:\
mkdir mooseOS
echo [TASK 1]: Completed.
goto app.moose.oobe.start
:app.moose.oobe.start
cls
title Welcome to mooseOS.
echo Hi there! Thanks for using mooseOS!
echo Before we begin, to make sure that everything works correctly, please open the C:\ drive on youe computer and copy all mooseOS files to the folder - do not rename or delete any files in the folder.
echo.
echo To confirm, have you done this?
echo Press 1 and then enter if you have. Press 2 and then enter if you haven't (this will shutdown mooseOS).
set /p function.moose.oobe.start.confirm=
if %function.moose.oobe.start.confirm% == 1 goto app.moose.oobe.start.continue
if %function.moose.oobe.start.confirm% == 2 goto app.moose.oobe.start.exit
:app.moose.oobe.start.exit
cls
exit
:app.moose.oobe.start.continue
cls
title Preparing mooseOS.
echo Thank you for moving the files, to test that it is working, we will open an image that is located in the folder.
cd C:\mooseOS\mooseOS\assets
start "" logo.png
echo.
echo If you can see the logo on your screen, you have configured mooseOS correctly. If you can't see the logo on the screen, please take a look at https://github.com/MooseMega/mooseOS/wiki/%5BERROR-CODE%5D-%5BSETUP%5D:-1
echo.
echo Press 1 to launch the website, press 2 to continue with the install.
set /p function.moose.oobe.start.continue.option=
if %function.moose.oobe.start.continue.option% == 1 goto app.moose.oobe.start.continue.launchwebsite
if %function.moose.oobe.start.continue.option% == 2 goto app.moose.oobe.start.continue.launchii
:app.moose.oobe.start.continue.launchwebsite
cls
title Loading website.
echo mooseOS will now shut down.
start "" https://github.com/MooseMega/mooseOS/wiki/%5BERROR-CODE%5D-%5BSETUP%5D:-1
exit
:app.moose.oobe.start.continue.launchii
cls
title Important Information
echo Thank you for moving the files. We will now send you to the Important Information. Please read through this as it's very important.
pause
goto app.moose.oobe.ii
:app.moose.oobe.ii
cls
title Important Information
echo Last updated on 11th September 2023.
echo.
echo 1. You may not take our code and change it to make it your own without our permission. 
echo 2. Updates will be in the MAJOR.MONTH format, e.g., 1.1
echo 3. We reserve the right to discontinue products early and release updates at our own speed.
echo 4. If you encounter any issues with our software, please report it on our online reporter.
echo.
echo If you do not agree with the important information, please close the software now and delete it.
pause
goto app.moose.home
:app.moose.home
cls
title HOME Menu
echo Welcome to the HOME Menu.
echo 
