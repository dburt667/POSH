#Create a new Hyper-V Lab
#Global Variables
$ComputerName

#Create VM Directory
$vmpath = Test-Path -Path C:\vms | New-Item -Path C:\ -Name vms -ItemType Directory -ErrorAction SilentlyContinue
#Create Virtual disk Directory
$vhdpath = Test-Path -Path C:\vms\vhd | New-Item -Path C:\vms\vhd -ItemType Directory -ErrorAction SilentlyContinue

#Step 1 Install Hyper-V
#Add Section to check install type Server or Workstation

<#Server
Get-WindowsFeature -ComputerName $ComputerName
#>

<#WorkStation
Get-WindowsOPtionalFEature -Online -FeatureName *hyper-v*all | Enable-WindowsOPtionalFeature -Online
#>

#Build A VM!
New-VM -Name "Server1-AD" -MemoryStartUpBytes 1GB -NewVHDPath $vhdpath\BaseIMage.vhdx

#NewVMSwitch


