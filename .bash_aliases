#!/bin/bash

alias gitaddcommit="git add -A && git commit -m"

function toponeniceonegetsorted() {
        python3 ~/hack/scripts/toponeniceonegetsorted.py -t "$1"
}

function nmapmegascan() {
        nmap -p- -Pn -T4 -sV --script=default -n --script=http-waf-fingerprint --data-length=43 --max-scan-delay 0 --initial-rtt 100ms --max-rtt 300ms "$1"
}

alias updateupgradeautoremove="sudo apt update -qy && sudo apt upgrade -qy && sudo apt autoremove -qy"

function findsubdomainsfromfoldernames() {
        if [ -z "$1" ]; then
                echo "Usage: findsubdomainsfromfoldernames SearchParam (usually a domain)"
                return 1
        else
                find /mnt/e/recon_data/Programs -type d -name "*$1*" -execdir basename {} ";"
        fi
}

function cs() {
        cd "$@" && ls
}
#
# RIPGREP
#
function rgredirect() {
        rg -ie $(curl --silent "https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/redirect.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rginterestingparams() {
        rg -ie $(curl --silent "https://raw.githubusercontent.com/1ndianl33t/Gf-Patterns/master/interestingparams.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rgtakeovers() {
        rg -ie $(curl --silent "https://raw.githubusercontent.com/tomnomnom/gf/master/examples/takeovers.json" | jq -r '.patterns | join(")|(")' | sed "s/^/'(/g; s/$/)'/g") "$1"
}

function rgemail() {
        rg -ie '\b[A-Za-z0-9._%+-]+(@|%40)[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' "$1"
}
