powershell "Get-AppxPackage -AllUsers | Remove-AppxPackage"
sc delete DiagTrack
sc delete dmwappushservice
echo "" > C:\\ProgramData\\Microsoft\\Diagnosis\\ETLLogs\\AutoLogger\\AutoLogger-Diagtrack-Listener.etl
reg add "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
powercfg -h off
ren %winver%\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe Edge

