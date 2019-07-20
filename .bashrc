if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

tat()
{
  local session_name="$1"
  tmux attach-session -t "$session_name"
  if [ $? -ne 0 ]; then
    echo "tat() is creating new tmux session with name=$session_name"
    tmux new-session -d -s "$session_name"
    # echo "tat() is setting default path with dir=$PWD"
    # tmux set default-path "$PWD"
    tmux attach-session -t "$session_name"
  fi
}
_tat()
{
  COMPREPLY=()
  local session="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "$(tmux list-sessions 2>/dev/null | awk -F: '{ print $1 }')" -- "$session") )
}
complete -F _tat tat

