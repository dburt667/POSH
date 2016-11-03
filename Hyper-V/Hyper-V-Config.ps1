#Create a new Hyper-V Lab
#Global Variables
$ComputerName
$VMDrive
$Vmpath

#Step 1 Install Hyper-V
#Add Section to check install type Server or Workstation

#Server
Get-WindowsFeature -ComputerName $ComputerName | 