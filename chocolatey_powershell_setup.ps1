$Packages = '7zip', 'awscli', 'awstools.powershell', 'docker', 'docker-compose', 'firefox', 'git', 'googlechrome', 'googledrive', 'jenkins', 'notepadplusplus', 'putty.install', 'python3', 'ruby', 'slack', 'spotify', 'vscode', 'windirstat', 'winscp'


If (Test-Path -Path "$env:ProgramData\Chocolatey") {
    #Install Chocolatey Packages
    ForEach ($PackageName in $Packages)
        {
            choco install $PackageName -y
        }

Else {
    #Install Chocolatey itself


    #Install Chocolatey Packages
    ForEach ($PackageName in $Packages)
        {
            choco install $PackageName -y
        }
}



$PipLibraries = 'arcade', 'astroid', 'bokeh', 'boto', 'celery', 'cryptography', 'django', 'jinja2', 'jupyter', 'mssql-cli', 'numpy', 'pandas', 'paramiko', 'psycopg2', 'pyodbc', 'pytest', 'scrapy', 'sqlalchemy'


If (Test-Path -Path "C:\ProgramData\Chocolatey\lib\python3" {

    ForEach ($PipLibrary in $PipLibraries)
        {
            pip3 install $PipLibrary
        }
}
