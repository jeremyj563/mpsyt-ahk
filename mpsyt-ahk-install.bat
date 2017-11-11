pip3 install virtualenv
@echo off

pip3 install virtualenvwrapper-win
mkvirtualenv mpsyt
setprojectdir %UserProfile%\Envs\mpsyt
pip3 install mps-youtube
pip3 install youtube_dl
pip3 install colorama

powershell Invoke-WebRequest -Uri "https://github.com/jeremyj563/mpsyt-ahk/raw/master/mpsyt-ahk.exe" -OutFile "%UserProfile%\Envs\mpsyt\mpsyt-ahk.exe"
powershell Invoke-WebRequest -Uri "https://github.com/jeremyj563/mpsyt-ahk/raw/master/mpv.exe" -OutFile "%UserProfile%\Envs\mpsyt\Scripts\mpv.exe"
powershell Invoke-WebRequest -Uri "https://github.com/jeremyj563/mpsyt-ahk/raw/master/mpv.com" -OutFile "%UserProfile%\Envs\mpsyt\Scripts\mpv.com"

%UserProfile%\Envs\mpsyt\mpsyt-ahk.exe