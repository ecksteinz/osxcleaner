#
#########################
# LOCALSTORAGE
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

local_storage ()
{
  # Name for logging
  name="Local Storage"

  farr=(
  "Local Storage"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  dirquery "${HOME}" "${farr[@]}";
}
