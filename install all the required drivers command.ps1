# install all the required drivers.
# please run enable test mode first, and after reboot use this script.

## Copy folder winx64 or all inside them, to C:/drivers
Get-ChildItem "C:\drivers\" -Recurse -Include *.inf | ForEach-Object {
      $_.FullName
     pnputil /add-driver $_.FullName /install 
}
