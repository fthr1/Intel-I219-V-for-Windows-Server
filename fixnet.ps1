# add task scheduler to windows, run at startup.
# powershell.exe
# optional parameter:  -ExecutionPolicy Bypass -File C:\fixnet.ps1

# CIDR example: 32, 24, 26, 27
# See this table: https://github.com/fthr1/Intel-I219-V-for-Windows-Server/blob/master/ip2.png
foreach($Adapter in Get-NetAdapter)
{
New-NetIPAddress –IPAddress YOUR_WINDOWS_SERVER_IP -DefaultGateway YOUR_GATEWAY_IP -PrefixLength CHANGE_THIS_WITH_CIDR -InterfaceIndex $Adapter.InterfaceIndex
}
