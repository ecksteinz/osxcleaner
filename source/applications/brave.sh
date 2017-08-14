#
#########################
# BRAVE BROWSER
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Removes cookies, storage, history and other data from the Brave browser
# without interfering with the existing configuration and preferences.
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

brave ()
{
  # Name for logging
  name="Brave Browser"

  # Specified file paths
  arr=(
  "${HOME}/Library/Application Support/brave/ABPFilterParserData.dat.temp"
  "${HOME}/Library/Application Support/brave/Cache"
  "${HOME}/Library/Application Support/brave/Cookies"
  "${HOME}/Library/Application Support/brave/Cookies-journal"
  "${HOME}/Library/Application Support/brave/databases"
  "${HOME}/Library/Application Support/brave/File System"
  "${HOME}/Library/Application Support/brave/Favicons"
  "${HOME}/Library/Application Support/brave/Favicons-journal"
  "${HOME}/Library/Application Support/brave/GPUCache"
  "${HOME}/Library/Application Support/brave/History"
  "${HOME}/Library/Application Support/brave/History-journal"
  "${HOME}/Library/Application Support/brave/httpse.json.temp"
  "${HOME}/Library/Application Support/brave/IndexedDB"
  "${HOME}/Library/Application Support/brave/ledger-publishersV2.leveldb"
  "${HOME}/Library/Application Support/brave/ledger-rulesV2.leveldb"
  "${HOME}/Library/Application Support/brave/Local Storage"
  "${HOME}/Library/Application Support/brave/Login Data"
  "${HOME}/Library/Application Support/brave/Login Data-journal"
  "${HOME}/Library/Application Support/brave/QuotaManager-journal"
  "${HOME}/Library/Application Support/brave/SafeBrowsingData.dat.temp"
  "${HOME}/Library/Application Support/brave/Service Worker"
  "${HOME}/Library/Application Support/brave/Session Storage"
  "${HOME}/Library/Application Support/brave/ShaderCache"
  "${HOME}/Library/Application Support/brave/TrackingProtection.dat.temp"
  "${HOME}/Library/Application Support/brave/updateLog.log"
  "${HOME}/Library/Application Support/brave/Visited Links"
  "${HOME}/Library/Application Support/brave/Web Data"
  "${HOME}/Library/Application Support/brave/Web Data-journal"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
}
