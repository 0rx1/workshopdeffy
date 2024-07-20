# Set the URL of the executable to be downloaded
$exeUrl = "https://example.com/path/to/yourfile.exe"

# Define the path where the executable will be saved
$exePath = "$env:TEMP\yourfile.exe"

# Set the security protocol for PowerShell to allow downloads
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12

# Download the executable file
Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

# Run the downloaded executable
Start-Process -FilePath $exePath
