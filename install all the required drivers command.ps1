# install all the required drivers.

# Mount the driver iso image
Mount-DiskImage D:\Driver\drivers-windows.iso

# Get the mount point/drive letter, considering that the above one is the only disk mounted
$isoMount = (Get-DiskImage -DevicePath \\.\CDROM0  | Get-Volume).DriveLetter

# Find the inf files and install
Get-ChildItem "$($isoMount):\" -Recurse -Include *.inf | ForEach-Object {
     $_.FullName
     pnputil /add-driver $_.FullName /install 
}
