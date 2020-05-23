#!/bin/bash

alias git-addcommit="git add -A && git commit -m"
alias toponeniceonegetsorted="python3 ~/hack/scripts/toponeniceonegetsorted.py -t $1"
alias nmap-mega-scan="nmap -p- -Pn -T4 -sV --script=default -n --script=http-waf-fingerprint --data-length=43 --max-scan-delay 0 --initial-rtt 100ms --max-rtt 300ms $1"

function findTargetUrl () {
	find /mnt/e/GDrive/YNAW/HackWiki/Programs -type d -name "*$1*" -exec basename {} \;
}

function cs () {
	cd "$@" && ls
}
