#
#########################
# GOOGLE
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Finds and deletes any google directories in the user library
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

google ()
{
  # Name for logging
  name="Google"

  arr=(
    "${HOME}/Library/Google"
    "${HOME}/Library/Application Support/Google"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
}
