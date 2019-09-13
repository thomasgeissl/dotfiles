
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install vscode
choco install visualstudio2017community 

choco install msys2

choco install git.install 
choco install nodejs.install 

choco install firefox 
choco install googlechrome

choco install vim 
choco install curl
choco install wget

choco install putty 

choco install arduino
choco install fritzing 

choco install slack 
choco install skype 

choco install puredata 
choco install supercollider 
choco install touchdesigner 

choco install vlc
choco install spotify
