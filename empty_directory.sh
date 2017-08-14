#!/bin/bash
#
#########################
# Empty Function
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Completely empties a directory without deleting the directory itself.
# Useful when the directory itself is required to be present at all times.
#

empty () {
  # Array of directory path to be emptied
  path=$1

  # Command to be executed, if a file was found.
  # Default is gshred with an iteration count of 7
  filecmd="gshred --force --iterations=7 --zero --remove"

  # Command to be executed, if a directory was found.
  # srm and gshred can't delete folder, so rm is the default
  dircmd="rm -rf"

  # Iterate through the array and execute function for each path
  if [[ -d ${path} ]]; then
    # If the path is a directory and exists, empty it

    sudo find "${path}" -mindepth 1 -type f -exec $filecmd {} \;

    sudo find "${path}" -mindepth 1 -type d -exec $dircmd {} \;

    printf "${path}  [ \e[1;32mEMPTIED\e[m ]\n"

  else

    # If nothing exists at the defined path, throw a warning
    printf "${path}  [ \e[1;33mNOT FOUND\e[m ]\n"
  fi
}

emptyarray () {
  t=("$@")
  for ((i = 0; i < ${#t[@]}; i++))
  do
    empty "${t[$i]}";
  done
}
