Function Set-WallPaper($Value)
{
    Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $Value
    rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

Function Download-Apod($Target)
{
    $apodContent = Invoke-WebRequest -Uri 'https://apod.nasa.gov/apod/' -UseBasicParsing
    $imageRegex = "[A-z\d\/]*\/([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)*?"
    $imagePath = $apodContent | find  """Images""" | select-string $imageRegex -AllMatches | % { $_.Matches } | % { $_.Value }
    $imageUrl = "https://apod.nasa.gov/apod/" + $imagePath
    echo $imageUrl
    
    $webcli = New-Object System.Net.WebClient
    $webcli.DownloadFile($imageUrl, $Target)
}
