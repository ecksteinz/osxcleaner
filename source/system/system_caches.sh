#
#########################
# SYSTEM CACHES
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

system_caches ()
{
  # Name for logging
  name="System Caches"

  # Specified file paths
  arr=(
  "/private/tmp"
  "/Library/Caches"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
}
