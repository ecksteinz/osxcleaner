#
#########################
# SAFARI
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

safari ()
{
  # Name for logging
  name="Safari"

  # Specified file paths

  arr=(
  "${HOME}/Library/Safari/LastSession.plist"
  "${HOME}/Library/Safari/LocalStorage"
  "${HOME}/Library/Safari/RecentlyClosedTabs.plist"
  "${HOME}/Library/Safari/TopSites.plist"
  "${HOME}/Library/Safari/Touch Icons Cache"
  )

  farr=(
  "History.db*"
  "WebpageIcons.db*"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  filequery "${HOME}/Library/Safari/" "${farr[@]}";

  wipearray "${arr[@]}";

  }
