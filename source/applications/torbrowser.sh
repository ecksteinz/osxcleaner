#
#########################
# TOR BROWSER
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

torbrowser ()
{
  # Name for logging
  name="Tor Browser"

  # Specified file paths
  arr=(
    "${HOME}/Library/Application Support/TorBrowser-Data"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  wipearray "${arr[@]}";

}
