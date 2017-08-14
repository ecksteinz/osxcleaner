#
#########################
# CRASHLYTICS
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Finds and deletes any crashlytics error data used by some applications
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

crashlytics ()
{
  # Name for logging
  name="Crashlytics"

  farr=(
  "com.crashlytics"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  dirquery "${HOME}" "${farr[@]}";
}
