# Define variables
$D = "$env:tmp"
$zipUrl = 'https://raw.githubusercontent.com/kcoderhtml/x/main/goose.zip'
$zipPath = "$D\goose.zip"
$extractPath = "$D\goose"

# Download the zip file
Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath

# Expand the zip file
Expand-Archive -Path $zipPath -DestinationPath $D -Force

# Start the executable multiple times
1..10 | ForEach-Object {
    Start-Process "$extractPath\GooseDesktop.exe"
}
