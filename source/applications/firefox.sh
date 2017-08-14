#
#########################
# FIRFOX
#########################
#
# DESCRIPTION
# * -------------------------------- *
# Removes cookies, storage, history and other data from Firefox without
# interfering with the existing configuration and preferences.
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

firefox ()
{
  # Name for logging
  name="Firefox"

  # Specified file paths
  darr=(
    "blocklist"
    "crashes"
    "gmp"
    "HTTPSEverywhereUserRules"
    "jetpack"
    "minidumps"
    "storage"
  )
  farr=(
    "AlternateServices.txt"
    "blocklist.xml"
    "compatibility.ini"
    "containers.json"
    "content-prefs.sqlite"
    "cookies.sqlite"
    "enumerate_devices.txt"
    "formhistory.sqlite"
    "key3.db"
    "kinto.sqlite"
    "localstore.rdf"
    "mimeTypes.rdf"
    "permissions.sqlite"
    "places.sqlite"
    "revocations.txt"
    "secmod.db"
    "SecurityPreloadState.txt"
    "sessionCheckpoints.json"
    "SiteSecurityServiceState.txt"
    "storage.sqlite"
    "times.json"
    "webappsstore.sqlite"
    "xulstore.json"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  # Executed command to clean file paths
  dirquery "${HOME}/Library/Application Support/Firefox/" "${darr[@]}";
  filequery "${HOME}/Library/Application Support/Firefox/" "${farr[@]}";

}
