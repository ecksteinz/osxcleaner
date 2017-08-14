#!/bin/bash
#
#########################
# File Query Wipe Function
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Searches for files matching a query and deleting them using the
# wipe function

filequerywipe () {

  # Directory in which to search
  dir=$1

  # The searched query
  query=$2

  # The paths to matching files
  paths=$(sudo find "${dir}" -name "${query}" -type f -print -mindepth 0)

  # Stores the number of matching paths. If none are found, then a warning
  # is thrown instead.
  lines=$(sudo find "${dir}" -name "${query}" -type f -print | wc -l)

  if [ $lines -eq 0 ]; then

    # Throw a warning, if nothing found
    printf "${query} in ${dir}  [ \e[1;33mNO MATCH\e[m ]\n"

  else

    # If a file was found, run the wipe function
    arr=()
    while read -r line; do
       arr+=("$line")
    done <<< "$paths"

    n=("${arr[@]}")
    for ((j = 0; j < ${#n[@]}; j++))
    do
      wipe "${n[$j]}";
    done

  fi
}

filequery () {
  t=("$@")
  for ((i = 1; i < ${#t[@]}; i++))
  do
    filequerywipe "${t[0]}" "${t[$i]}"
  done
}
