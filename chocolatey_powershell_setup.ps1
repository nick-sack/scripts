$Packages = '7zip', 'awscli', 'awstools.powershell', 'docker', 'docker-compose', 'docker-desktop', 'firefox', 'git', 'googlechrome', 'googledrive', 'jenkins', 'notepadplusplus', 'putty.install', 'python3', 'ruby', 'rust', 'slack', 'spotify', 'terraform', 'vscode', 'windirstat', 'winscp'


If (Test-Path -Path "$env:ProgramData\Chocolatey") {
    #Install Chocolatey Packages
    ForEach ($PackageName in $Packages)
        {
            choco install $PackageName -y
        }
}

Else {
    #Install Chocolatey itself
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    #Install Chocolatey Packages
    ForEach ($PackageName in $Packages)
        {
            choco install $PackageName -y
        }
}



$PipLibraries = 'arcade', 'astroid', 'bokeh', 'boto', 'celery', 'cryptography', 'django', 'jinja2', 'jupyter', 'mssql-cli', 'numpy', 'pandas', 'paramiko', 'psycopg2', 'pyodbc', 'pytest', 'requests', 'scrapy', 'sqlalchemy'


If (Test-Path -Path "C:\ProgramData\Chocolatey\lib\python3") {

    ForEach ($PipLibrary in $PipLibraries)
        {
            pip3 install $PipLibrary
        }
}


$VsCodeExtensions = 'hookyqr.beautify', 'ms-vscode.csharp', 'rokoroku.vscode-theme-darcula', 'msjsdiag.debugger-for-chrome', 'peterjausovec.vscode-docker', 'donjayamanne.githistory', 'ms-vscode.go', 'wholroyd.jinja', 'mechatroner.rainbow-csv', 'rebornix.ruby', 'ms-mssql.mssql', 'dotjoshjohnson.xml', 'redhat.vscode-yaml', 'ms-vscode.powershell'

If (Test-Path -Path "C:\ProgramData\Chocolatey\lib\vscode") {

    ForEach ($Extension in $VsCodeExtensions)
        {
            code --install-extension $Extension
        }
}


$DockerImages = 'mysql', 'postgres', 'ubuntu', 'redis', 'elasticsearch', 'celery', 'mongo', 'consul', 'rabbitmq', 'ruby', 'jenkins/jenkins', 'kibana', 'grafana/grafana', 'amazonlinux', 'python'

If (Test-Path -Path "C:\ProgramData\Chocolatey\lib\docker-desktop") {

    ForEach ($Image in $DockerImages)
        {
            docker image pull $Image
        }
}


#Set the taskbar icons to be small
Set-ItemProperty -path HKCU:\Software\Microsoft\Windows\Shell\Bags\1\Desktop -name IconSize -value 20

#explorer.exe restarts automatically after stopping
Stop-Process -name explorer

#Set folder view options
Set-ItemProperty -path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -name Hidden -value 1
Set-ItemProperty -path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -name HideFileExt -value 0
Set-ItemProperty -path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -name ShowSuperHidden -value 1

Stop-Process -processname explorer
