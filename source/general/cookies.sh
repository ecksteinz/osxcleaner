#
#########################
# COOKIES
#########################
#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

cookies ()
{
  # Name for logging
  name="Cookies"

  # Specified file paths
  arr=(
  "${HOME}/Library/Cookies"
  )

  farr=(
  "Cookies"
  "Cookies-journal"
  )
  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
  filequery "${HOME}" "${farr[@]}";

}
