if (choco){
    "choco alredy installed"
} else {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

$Folder = '~\Documents\Mordisquinha'

if (Test-Path -Path $Folder) {
    "Path alredy exists!"
} else {
    mkdir Mordisquinha
}

cd $Folder

if (git){
    git clone https://github.com/Mordisquinha/*.git
} else {
    choco install git -Y -V
}


choco install discord googlechrome vscode winrar wsl-ubuntu-2004 virtualbox notepadplusplus python dbeaver putty rainmeter lively vim winscp -Y -V 
shutdown /r /t 0
