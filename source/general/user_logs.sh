#
#########################
# User Logs
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

user_logs ()
{
  # Name for logging
  name="User Logs"

  # Specified file paths
  arr=(
    "${HOME}/Library/Logs"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
}
