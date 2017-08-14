#
#########################
# SYSTEM INDEXES
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

system_indexes ()
{
  # Name for logging
  name="System Indexes"

  # Specified file paths
  arr=(
    "/.fseventsd"
    "/.dbfseventsd"
    "/.Spotlight-V100"
    "/.DocumentRevisions-V100"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
}
