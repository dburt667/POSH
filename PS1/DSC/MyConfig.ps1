Configuration MyConfig{
    # Parameter help description
    [Parameter(AttributeValues)]
    [string]
    $ComputerName{
        WindowsFeature Backups{
            Ensure = Present 
            Name = Windows-Backup
        }
        WindowsFeature DHCP{
            Ensure =  Present 
            Name = DHCP-Server
        }
        
    }
}