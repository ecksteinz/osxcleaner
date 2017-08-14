#
#########################
# TOR HOMEBREW
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

torbrew ()
{
  # Name for logging
  name="Tor Homebrew"

  # Specified file paths
  arr=(
    "${HOME}/.tor"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  wipearray "${arr[@]}";

}
