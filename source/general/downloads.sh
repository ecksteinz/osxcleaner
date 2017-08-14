#
#########################
# DOWNLOADS
#########################
#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

downloads ()
{
  # Name for logging
  name="Downloads"

  # Specified file paths
  arr=(
  "${HOME}/Downloads"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";

}
