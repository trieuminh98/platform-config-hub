list-my-vars() {
  local rc="${ZDOTDIR:-$HOME}/.zshrc"
  echo "=== Variables (.zshrc exports) ==="
  sed -nE 's/^[[:space:]]*export[[:space:]]+([A-Za-z_][A-Za-z0-9_]*)=.*/\1/p' "$rc" | sort -u
}

alias myvar='list-my-vars'

list-my-commands() {
  local rc="${ZDOTDIR:-$HOME}/.zshrc"
  local line pending_args fn
  typeset -A seen_fn

  echo "=== Aliases ==="
  sed -nE 's/^[[:space:]]*alias[[:space:]]+([A-Za-z0-9_-]+)=.*/\1/p' "$rc" \
    | sort -u \
    | while read -r n; do alias "$n"; done

  echo
  echo "=== Functions ==="

  pending_args=""
  while IFS= read -r line || [[ -n "$line" ]]; do
    if [[ "$line" =~ '^[[:space:]]*#[[:space:]]*@args:[[:space:]]*(.*)$' ]]; then
      pending_args="${match[1]}"
      continue
    fi

    if [[ "$line" =~ '^[[:space:]]*function[[:space:]]+([A-Za-z_][A-Za-z0-9_-]*)[[:space:]]*\{' ]]; then
      fn="${match[1]}"
    elif [[ "$line" =~ '^[[:space:]]*([A-Za-z_][A-Za-z0-9_-]*)[[:space:]]*\(\)[[:space:]]*\{' ]]; then
      fn="${match[1]}"
    else
      if [[ "$line" =~ '^[[:space:]]*$' || "$line" =~ '^[[:space:]]*#' ]]; then
        continue
      fi
      pending_args=""
      continue
    fi

    if [[ "$fn" != "list-my-commands" && -z "${seen_fn[$fn]}" ]]; then
      seen_fn[$fn]=1
      whence -f "$fn" >/dev/null 2>&1 || {
        pending_args=""
        continue
      }
      if [[ -n "$pending_args" ]]; then
        echo "$fn $pending_args"
      else
        echo "$fn"
      fi
    fi

    pending_args=""
  done < "$rc"
}

alias my='list-my-commands'
alias gitp='git fetch --all && git pull'
alias cport='lsof -nP -iTCP -sTCP:LISTEN'

# @args: [port=8080]
kill-port() {
  local port="${1:-8080}"
  npx --yes kill-port "$port"
}

# @args: [message="empty commit"]
empty-commit() {
  local msg="${*:-empty commit}"
  git commit --allow-empty -m "$msg"
}
