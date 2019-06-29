$EpBefore = Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted # Might be required to be ran first

# source functions
. .\apodDownloader.ps1

Download-Apod -target C:\apod-today.jpg
Set-WallPaper -value C:\apod-today.jpg

Set-ExecutionPolicy $EpBefore