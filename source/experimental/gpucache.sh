#
#########################
# GPUCACHE
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

gpucache ()
{
  # Name for logging
  name="GPU Cache"

  farr=(
  "GPUCache"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  dirquery "${HOME}" "${farr[@]}";
}
