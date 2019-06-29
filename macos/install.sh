echo "************************************************************"
echo "* Installing APOD Wallpaper Daily to run everyday at noon. *"
echo "************************************************************"
echo "Please make sure you have wget installed as /usr/local/bin/wget"
echo "This can be done by: $ brew install wget"

sourcesPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

chmod u+x $sourcesPath/download.sh
chmod u+x $sourcesPath/setBackground.sh

task1=$sourcesPath/download.sh
task2=$sourcesPath/setBackground.sh

crontab -l > prevcron
echo "0 12 * * * ${task1} && ${task2}" >> prevcron
# echo "39 01 * * * ${task1} && ${task2}" >> prevcron # tests

# install new cron file
crontab prevcron
rm -f prevcron

echo "Done!"