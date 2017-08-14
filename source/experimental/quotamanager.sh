#
#########################
# QUOTAMANAGER
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

quotamanager ()
{
  # Name for logging
  name="QuotaManager"

  farr=(
  "QuotaManager"
  "QuotaManager-journal"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  filequery "${HOME}" "${farr[@]}";
}
