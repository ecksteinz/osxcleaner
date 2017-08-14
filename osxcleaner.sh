#!/bin/bash
#
#########################
# OSXCleaner
#########################
#
# DESCRIPTION
# * -------------------------------- *
# OSXCleaner is a set of scripts to clean system logs, application caches,
# cookies and more on MacOS.
#

# Add wipe function
. wipe.sh;
. empty_directory.sh;
. query_delete_file.sh;
. query_delete_directory.sh;

# Load all source files
for file in ./source/*/*
do
    . $file
done

# Specify what needs to be cleaned

##### APPLICATIONS #####

# Brave Browser
brave

# Chromium
chromium

# Firefox
firefox

# Safari
safari

# Spotify
spotify

# Tor Homebrew
torbrew

# Tor Browser Bundle
torbrowser

# ##### GENERAL #####

# Cookies
cookies

# Crash Reporting
crashreporters

# Home Downloads Folder
downloads

# Trashes
trashes

# User Caches
user_caches

# User Logs
user_logs

# ##### SYSTEM #####

# Apple
apple

# bash
bash

# System Caches
system_caches

# System Logs
system_logs

# System Memory
system_memory

# System Indexes
system_indexes

# ##### EXPERIMENTAL #####

# Google
google

# Crashlytics error reporting
crashlytics

# GPU Cache
gpucache

# IndexedDB
indexeddb

# Local Storage
local_storage

# QuotaManager
quotamanager

# Telemetry Data
telemetry
