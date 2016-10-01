<#install Chocolatey packager
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
git and posh-git#>

<#install git and POSH-Git
choco install git, install POSH-GIT#>
Choco install git
choco install poshgit

#Install PSAKE
Install-Module -Name psake

#Install Pester
Install-Module -Name Pester

#Install Script analyzer
Install-Module -Name PSScriptAnalyzer

#Install PSDeploy
Install-Module -Name PSDeploy
