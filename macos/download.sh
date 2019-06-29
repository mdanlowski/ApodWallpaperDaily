if [[ $(ls /Users/$USER/Desktop/ | grep apod.jpg) ]]; then
  rm -f /Users/$USER/Desktop/apod.jpg
  echo "file removed"
else
  echo "no apod.jpg file from recent execution found"
  echo "moving along..."
fi

baseUrl="https://apod.nasa.gov/apod/"
homeUrl="https://apod.nasa.gov/apod/astropix.html"

imgPath=$(curl $homeUrl | grep "href=\".*[\.jpg|\.png|\.jpeg|\.gif]\">$")
len=${#imgPath}
imgUrl=$(echo ${baseUrl}${imgPath:9:(len-11)})

/usr/local/bin/wget $imgUrl -O /Users/$USER/Desktop/apod.jpg