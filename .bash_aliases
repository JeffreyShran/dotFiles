#!/bin/bash

#
#
# [ -n "${1+set}" ] &&
# https://stackoverflow.com/a/13864829
#
#

alias gitaddcommit="git add -A && git commit -m"

function toponeniceonegetsorted() {
	[ -n "${1+set}" ] && python3 ~/hack/scripts/toponeniceonegetsorted.py -t "$1"
}

function nmapmegascan() {
	[ -n "${1+set}" ] && nmap -p- -Pn -T4 -sV --script=default -n --script=http-waf-fingerprint --data-length=43 --max-scan-delay 0 --initial-rtt 100ms --max-rtt 300ms "$1"
}

alias updateupgradeautoremove="sudo apt update -qy && sudo apt upgrade -qy && sudo apt autoremove -qy"

function findsubdomainsfromfoldernames() {
	[ -n "${1+set}" ] && find /mnt/e/recon_data/Programs -type d -name "*$1*" -execdir basename {} ";"
}

function cs() {
	cd "$@" && ls
}

function amassoutputtidyIP() {
	[ -n "${1+set}" ] && cut -d']' -f2 "$1" | awk '{print $2}' | tr ',' '\n' | sort -u
}

function amassoutputtidyDOMAIN() {
	[ -n "${1+set}" ] && cut -d']' -f2 "$1" | awk '{print $1}'
}


#
# RIPGREP
#
function rgredirect() {
	[ -n "${1+set}" ] && rg -ie $(curl --silent "https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/redirect.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rginterestingparams() {
        [ -n "${1+set}" ] && rg -ie $(curl --silent "https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/interestingparams.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rgtakeovers() {
        [ -n "${1+set}" ] && rg -ie $(curl --silent "https://raw.githubusercontent.com/tomnomnom/gf/master/examples/takeovers.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rgemail() {
	[ -n "${1+set}" ] && rg -ie '\b[A-Za-z0-9._%+-]+(@|%40)[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' "$1"
}
