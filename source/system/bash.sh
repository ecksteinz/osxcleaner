#
#########################
# BASH
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

bash ()
{
  # Name for logging
  name="Bash"

  # Specified file paths
  arr=(
  "${HOME}/.bash_sessions"
  "${HOME}/.bash_history"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
}
