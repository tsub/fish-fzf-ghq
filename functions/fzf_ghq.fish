function fzf_ghq -d "Efficient fish keybindinging for fzf with ghq"
  eval "ghq list | __fzfcmd --query (commandline)" | read -z select

  if not test -z $select
    eval "cd (ghq root)/(builtin string trim "$select")"
    commandline -f repaint
  end
end