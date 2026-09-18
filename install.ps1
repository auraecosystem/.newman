# Per-user installation (no admin required)
Start-Process 'Docker Desktop Installer.exe' -Wait -ArgumentList 'install', '--user'
 
# All-users installation (run as administrator)
Start-Process 'Docker Desktop Installer.exe' -Wait install
