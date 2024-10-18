function help
  for cmd in bat batcat
    if command -qs $cmd
      $argv --help 2>&1 | $cmd --language=help --style=plain --color=always --paging=never
    end
  end
end
