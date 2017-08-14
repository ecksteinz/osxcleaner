#!/bin/bash
#
#########################
# Directory Query Wipe Function
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Searches for directories matching a query and deleting them using the
# wipe function

dirquerywipe () {
  # Directory in which to search
  dir=$1

  # The searched query
  query=$2

  # The paths to matching directories
  paths=$(sudo find "${dir}" -name "${query}" -type d -print -mindepth 0)
  lines=$(sudo find "${dir}" -name "${query}" -type d -print | wc -l)

  # Stores the number of matching paths. If none are found, then a warning
  # is thrown instead.
  if [ $lines -eq 0 ]; then

    # Throw a warning, if nothing found
    printf "${query} in ${dir}  [ \e[1;33mNO MATCH\e[m ]\n"

  else

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

dirquery () {

  t=("$@")
  for ((i = 1; i < ${#t[@]}; i++))
  do
    dirquerywipe "${t[0]}" "${t[$i]}"
  done
}
