function f --description "Open current dir with file manager"
    xdg-open ./ >/dev/null 2>&1 & disown
end
