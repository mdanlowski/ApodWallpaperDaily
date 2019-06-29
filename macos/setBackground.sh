imgPath=/Users/$USER/Desktop/apod.jpg
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/setBackground.scpt
echo $scriptPath

osascript $scriptPath $imgPath