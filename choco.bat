:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

::install git and clone all my repos in my github
choco install git -fv
cd "%userprofile% \Documents\Mordisquinha"
git clone https://github.com/Mordisquinha/Chocolatey.git
git clone https://github.com/Mordisquinha/Mordisquinha.git
git clone https://github.com/Mordisquinha/Projeto_Bix.git
git clone https://github.com/Mordisquinha/curriculo.git
git clone https://github.com/Mordisquinha/Projeto_Pulsus.git
git clone https://github.com/Mordisquinha/Jogo_da_Velha.git

:: install all my anothers packages and reboot the computer
choco install discord googlechrome vscode winrar wsl-ubuntu-2004 virtualbox notepadplusplus python dbeaver putty rainmeter lively vim winscp -Y -V 
echo rebooting in 5s...

shutdown /r /t 5

