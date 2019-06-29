on run argv
  tell application "Finder" to set desktop picture to POSIX file (item 1 of argv)
end run