Invoke-WebRequest -UseBasicParsing https://github.com/Azure/azure-documentdb-datamigrationtool/releases/download/1.8.3/azure-documentdb-datamigrationtool-1.8.3.zip -OutFile C:\Packages\datamigrationtool.zip
Expand-Archive C:\Packages\datamigrationtool.zip -DestinationPath C:\Users\adminuser.SRTHubCore\Desktop\
Invoke-WebRequest -UseBasicParsing https://github.com/microsoft/AzureStorageExplorer/releases/download/v1.21.3/Windows_StorageExplorer.exe   -OutFile  C:\Users\adminuser.SRTHubCore\Desktop\Windows_StorageExplorer.exe
Set-ItemProperty -Path "HKLM:\\System\\CurrentControlSet\\Control\\Lsa\\FipsAlgorithmPolicy" -Name "Enabled" -Value 1
Restart-Service W32Time
w32tm /config /manualpeerlist:time.nist.gov /syncfromflags:manual /reliable:yes /update
