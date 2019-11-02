# ApodWallpaperDaily
An experiment to set desktop wallpaper to NASA's [Astronomy Picture of the Day](https://apod.nasa.gov/)

## MacOS working beta is here! - Installation
Clone the repository or download the `macos` folder and run `install.sh`

## What is up?
Aim is to code it for all popular platforms :)
Help wanted and appreciated!

- [ ] Windows
  - [x] Web scraping PowerShell module to download the APOD photo
  - [ ] Setting desktop wallpaper thru PS (working 50/50)
  - [ ] Set the script to run daily
- [x] MacOS
  - [x] Web scraping with curl and download image with wget
  - [x] Setting desktop wallpaper using AppleScript (osascript)
  - [x] Set the script to run daily at 12:00 with crontab
  - [ ] FIXME: Images should have different names cause the system does not always change the background
  - [ ] Setup a script and endpoint to download and install automatically
- [ ] Linux /Debian based

## Known issues

### General

- [ ] Unhandled case when APOD item is a video

### Mac
 
- Please make sure you have wget installed as /usr/local/bin/wget
- This can be done by `$ brew install wget`
