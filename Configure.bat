@echo off
set /p id="Enter Services Username: "
set /p pass="Enter Services Password: "
echo --
echo --
echo Alert Features
echo To Enable a Feature, Put a 1, To Disable a feature, Put a Zero, Default is Disable
echo ==============================
echo Anti-Spam will prevent notices from being alerted to you when a FC spams the IRC channel.
set /p aspam="Enable Anti-Spam?: "
echo --
echo Text-To-Speech will have the notice read to you using the default voice built into windows
set /p tts="Enable Text-To-Speech?: "
echo --
echo Alert Beep will play the default windows notification sound when a notice is raised.
set /p beep="Enable Alert Beep?: "


echo [Server] > Settings.ini
echo Addr = 127.0.0.1 >> Settings.ini
echo Port = 6666 >> Settings.ini
echo Nicks = %id% >> Settings.ini
echo User = %id% >> Settings.ini
echo Pass = %pass% >> Settings.ini
echo Channels = #horde >> Settings.ini

echo [Alert] >> Settings.ini
echo TTS = %tts% >> Settings.ini
echo AntiSpam = %aspam% >> Settings.ini
echo Beep = %beep% >> Settings.ini
echo LastText=FirstInstall >> Settings.ini

echo All Done!
timeout 10