
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install vscode -y
choco install visualstudio2017community -y

choco install msys2 -y

choco install git.install -y
choco install nodejs.install -y
choco install nvm -y

choco install firefox -y
choco install googlechrome -y

choco install vim -y
choco install curl -y
choco install wget -y

choco install 7zip.install -y

choco install putty -y

choco install arduino -y

choco install slack -y
choco install skype -y

choco install puredata -y
choco install supercollider -y 
choco install touchdesigner -y
choco install k-litecodecpackfull -y

choco install vlc -y
choco install spotify -y
