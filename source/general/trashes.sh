#
#########################
# TRASHES
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Securely empties trash on MacOS and mounted volumes
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

trashes ()
{
  # Name for logging
  name="Trashes"

  arr=(
  "${HOME}/.Trash"
  "/.Trashes"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";
}
