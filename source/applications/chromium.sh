#
#########################
# CHROMIUM
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Removes cookies, storage, history and other data from Chromium without
# interfering with the existing configuration and preferences.
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

chromium ()
{
  # Name for logging
  name="Chromium"

  # Specified file paths
  arr=(
  "${HOME}/Library/Application Support/Chromium/Crashpad"
  "${HOME}/Library/Application Support/Chromium/ShaderCache"
  "${HOME}/Library/Application Support/Chromium/Default/Cookies"
  "${HOME}/Library/Application Support/Chromium/Default/Cookies-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Current Session"
  "${HOME}/Library/Application Support/Chromium/Default/Current Tabs"
  "${HOME}/Library/Application Support/Chromium/Default/Current Session"
  "${HOME}/Library/Application Support/Chromium/Default/Extension Cookies"
  "${HOME}/Library/Application Support/Chromium/Default/Extension Cookies-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Favicons"
  "${HOME}/Library/Application Support/Chromium/Default/Favicons-journal"
  "${HOME}/Library/Application Support/Chromium/Default/File System"
  "${HOME}/Library/Application Support/Chromium/Default/GPUCache"
  "${HOME}/Library/Application Support/Chromium/Default/History"
  "${HOME}/Library/Application Support/Chromium/Default/History Provider Cache"
  "${HOME}/Library/Application Support/Chromium/Default/History-journal"
  "${HOME}/Library/Application Support/Chromium/Default/IndexedDB"
  "${HOME}/Library/Application Support/Chromium/Default/Last Session"
  "${HOME}/Library/Application Support/Chromium/Default/Last Tabs"
  "${HOME}/Library/Application Support/Chromium/Default/Login Data"
  "${HOME}/Library/Application Support/Chromium/Default/Login Data-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Network Action Predictor"
  "${HOME}/Library/Application Support/Chromium/Default/Network Action Predictor-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Network Persistent State"
  "${HOME}/Library/Application Support/Chromium/Default/Origin Bound Certs"
  "${HOME}/Library/Application Support/Chromium/Default/Origin Bound Certs-journal"
  "${HOME}/Library/Application Support/Chromium/Default/previews_opt_out.db"
  "${HOME}/Library/Application Support/Chromium/Default/previews_opt_out.db-journal"
  "${HOME}/Library/Application Support/Chromium/Default/QuotaManager"
  "${HOME}/Library/Application Support/Chromium/Default/QuotaManager-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Service Worker"
  "${HOME}/Library/Application Support/Chromium/Default/Session Storage"
  "${HOME}/Library/Application Support/Chromium/Default/Shortcuts"
  "${HOME}/Library/Application Support/Chromium/Default/Shortcuts-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Top Sites"
  "${HOME}/Library/Application Support/Chromium/Default/Top Sites-journal"
  "${HOME}/Library/Application Support/Chromium/Default/Top Sites"
  "${HOME}/Library/Application Support/Chromium/Default/Visited Links"
  "${HOME}/Library/Application Support/Chromium/Default/Web Data"
  "${HOME}/Library/Application Support/Chromium/Default/Web Data-journal"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
}
