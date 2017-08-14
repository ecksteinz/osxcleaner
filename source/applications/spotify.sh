#
#########################
# SPOTIFY
#########################
#

#
# FUNCTION NAME
# * -------------------------------- *
# Use the name below in the osxcleaner.sh file to execute function
#

spotify ()
{
  # Name for logging
  name="Spotify"

  # Specified file paths
  arr=(
  "${HOME}/Library/Application Support/Spotify/PersistentCache"
  "${HOME}/Library/Application Support/ad-state-storage.bnk"
  "${HOME}/Library/Application Support/facebook-publish.bnk"
  "${HOME}/Library/Application Support/local-files.bnk"
  "${HOME}/Library/Application Support/log"
  "${HOME}/Library/Application Support/pending-messages_seq_nr"
  "${HOME}/Library/Application Support/player-state"
  "${HOME}/Library/Application Support/recently_played.bnk"
  "${HOME}/Library/Application Support/social_manager.bnk"
  "${HOME}/Library/Application Support/watch-sources.bnk"
  )

  # Logging
  printf "\n[*] \e[1;33m${name}\e[m"
  printf "\n---------------------------------------------------\n"

  wipearray "${arr[@]}";

}
