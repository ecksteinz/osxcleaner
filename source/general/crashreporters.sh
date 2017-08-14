#
#########################
# CRASH REPORTERS
#########################
#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

crashreporters ()
{
  # Name for logging
  name="Crash Reporters"

  # Specified file paths
  arr=(
  "${HOME}/Library/Application Support/CrashReporter"
  "${HOME}/Library/Application Support/com.crashlytics"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  emptyarray "${arr[@]}";

}
