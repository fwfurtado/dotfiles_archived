function __compile_completions_if_necesary() {
  autoload -Uz compinit 

  if [ ! -s "$HOME/.zcompdump" ]; then 
    compinit
  fi

}

function __unset_if_defined() {

  local envvar=$(eval "echo \"\$$1\"")

  if [ ! -z "${envvar+x}" ]; then
    unset $1
  fi

}

