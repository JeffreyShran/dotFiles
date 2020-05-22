#!/bin/bash

alias git-addcommit="git add -A && git commit -m"
alias toponeniceonegetsorted="python3 ~/hack/scripts/toponeniceonegetsorted.py -t $1"

function findTargetUrl () {
	find /mnt/e/GDrive/YNAW/HackWiki/Programs -type d -name "*$1*" -exec basename {} \;
}

function cs () {
	cd "$@" && ls
}
