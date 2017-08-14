#
#########################
# SYSTEM MEMORY
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

system_memory ()
{
  # Name for logging
  name="System Memory"

  # Specified file paths
  arr=(
    "/private/var/vm/"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
}
