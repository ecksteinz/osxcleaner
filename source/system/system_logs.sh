#
#########################
# SYSTEM LOGS
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

system_logs ()
{
  # Name for logging
  name="System Logs"

  # Specified file paths
  arr=(
    "/Library/Logs"
    "/private/var/log"
    "/var/log"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
}
