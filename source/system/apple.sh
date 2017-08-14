#
#########################
# APPLE
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

apple ()
{
  # Name for logging
  name="Apple"

  # Specified file paths
  arr=(
  "${HOME}/Library/Application Support/AddressBook"
  "${HOME}/Library/Application Support/App Store"
  "${HOME}/Library/Application Support/CallHistoryDB"
  "${HOME}/Library/Application Support/CallHistoryTransactions"
  "${HOME}/Library/Application Support/com.apple.appleseed.FeedbackAssistant"
  "${HOME}/Library/Application Support/com.apple.ProtectedCloudStorage"
  "${HOME}/Library/Application Support/com.apple.sharedfilelist"
  "${HOME}/Library/Application Support/com.apple.TCC"
  "${HOME}/Library/Application Support/icdd"
  "${HOME}/Library/Application Support/Quick Look"
  "${HOME}/Library/Application Support/SyncServices"
  "${HOME}/Library/Application Support/videosubscriptionsd"
  "${HOME}/Library/Assistant"
  "${HOME}/Library/CallServices"
  "${HOME}/Library/CoreFollowUp"
  "${HOME}/Library/Developer/Xcode/iOS Device Logs"
  "${HOME}/Library/IdentityServices"
  "${HOME}/Library/iTunes"
  "${HOME}/Library/Mail"
  "${HOME}/Library/Maps"
  "${HOME}/Library/Metadata"
  "${HOME}/Library/Personas"
  "${HOME}/Library/PubSub"
  "${HOME}/Library/Suggestions"
  "${HOME}/Library/SyncedPreferences"
  "${HOME}/Library/Webkit"
  )
  farr=(
  "ocspcache.sqlite3"
  "ocspcache.sqlite3-shm"
  "ocspcache.sqlite3-wal"
  "caissuercache.sqlite3"
  "caissuercache.sqlite3-journal"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  wipearray "${arr[@]}";
  filequery "${HOME}/Library/Keychains" "${farr[@]}";
}
