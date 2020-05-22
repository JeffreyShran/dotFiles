if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
export GOPATH=/home/jeff/go
export PATH=/home/jeff/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:"/mnt/c/Program Files/Git/cmd":/mnt/c/Users/d/AppData/Local/Microsoft/WindowsApps:"/mnt/c/Users/d/AppData/Local/Programs/Microsoft VS Code/bin":/home/jeff/go/bin:/usr/local/go/bin
. ~/.bashrc
