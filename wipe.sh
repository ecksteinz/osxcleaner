#!/bin/bash
#
#########################
# Wipe Function
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Deletes any file(s) using the gshred command. If destination is a directory,
# the function will first securely delete any files and then remove directory.
#

wipe () {

  # Array of file and directory paths to be deleted
  # paths=( "$@" )

  path=$1

  # printf "THIS PATH ${paths[1]}";

  # Command to be executed, if a file was found.
  # Default is gshred with an iteration count of 7
  filecmd="gshred --force --iterations=7 --zero --remove"

  # Command to be executed, if a directory was found.
  # srm and gshred can't delete folder, so rm is the default
  dircmd="rm -rf"

  # Iterate through the array and execute function for each path
  # for ((i = 0; i < ${#paths[@]}; i++ ))
  # do

  if [[ -d ${path} ]]; then
    # If the path is a directory, empty it first and then remove directory

    sudo find "${path}" -mindepth 1 -type f -exec $filecmd {} \;

    $dircmd "${path}";

    printf "${path}  [ \e[1;32mDELETED\e[m ]\n"

  elif [[ -f ${path} ]]; then
    # If the path is a file, securely delete it

    sudo find "${path}" -type f -depth 0 -exec $filecmd {} \;

    printf "${path}  [ \e[1;32mDELETED\e[m ]\n"

  else
    # If nothing exists at the defined path, throw a warning
    printf "${path}  [ \e[1;33mNOT FOUND\e[m ]\n"
  fi
  # done
}

# Function to wipe an array
wipearray () {
  t=("$@")
  for ((i = 0; i < ${#t[@]}; i++))
  do
    wipe "${t[$i]}";
  done
}
