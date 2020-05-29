#!/bin/bash

############################################
### FETCHES DOT FILES                    ###
### VERSION: 0.1                         ###
### TWITTER: @jeffreyshran               ###
### GITHUB:  github.com/JeffreyShran     ###
############################################

if ! dpkg -s curl >/dev/null 2>&1; then
  apt-get install -qy curl
fi

if ! curl "https://raw.githubusercontent.com/JeffreyShran/dotFiles/master/.bash_aliases" -o "~/.bash_aliases"; then
  printf '(bash_aliases) Curl failed with error code "%d"\n' "$?" >&2
fi

if ! curl "https://raw.githubusercontent.com/JeffreyShran/dotFiles/master/.bash_profile" -o "~/.bash_profile"; then
  printf '(bash_profile) Curl failed with error code "%d"\n' "$?" >&2
fi

if ! curl "https://raw.githubusercontent.com/JeffreyShran/dotFiles/master/.bashrc" -o "~/.bashrc"; then
  printf '(bashrc) Curl failed with error code "%d"\n' "$?" >&2
fi
