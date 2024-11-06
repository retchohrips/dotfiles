if command -qs eza
    alias ls 'eza --icons --sort=type'
    alias l 'eza -l --icons --git --sort=type --header --no-time --total-size --smart-group --octal-permissions'
    alias la 'eza -lag --icons --git --sort=type --header --no-time --total-size --smart-group --octal-permissions'
end

if command -qs batcat
    alias bat batcat
end

for cmd in bat batcat
    if command -qs $cmd
        alias cat "$cmd -pp"
        break
    end
end

if command -qs batman
    alias man batman
end

if command -qs prettybat
    alias pb prettybat
end

if command -qs ug
    alias grep ug
    alias egrep 'ugrep -E'
    alias fgrep 'ug -F'
    alias xzgrep 'ug -z'
    alias xzegrep 'ug -zE'
    alias xzfgrep 'ug -zF'
end

if command -qs rsync
    alias rcp 'rsync --partial --info=progress2 -haz'
end

if command -q 7zz
    alias archive "7zz a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on $argv"
else if command -q 7z
    alias archive "7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on $argv"
end

if command -qs 7zz
    alias 7z 7zz
end

alias q exit
alias e exit
alias c clear
