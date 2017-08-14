#
#########################
# User Caches
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

user_caches ()
{
  # Name for logging
  name="User Caches"

  # Specified file paths
  arr=(
  "${HOME}/Library/Calendars/Calendar Cache"
  "${HOME}/Library/Calendars/Calendar Cache-shm"
  "${HOME}/Library/Calendars/Calendar Cache-wal"
  "${HOME}/Library/Calendars/Email Cache.plist"
  )
  earr=(
    "${HOME}/Library/Caches"
    "${HOME}/Library/Saved Application State"
    "${HOME}/Library/Autosave Information"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
  emptyarray "${earr[@]}";
}
