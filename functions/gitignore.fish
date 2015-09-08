function gitignore
  set params (printf '%s\n' $argv | paste -sd, -)
  curl -s "https://www.gitignore.io/api/$params"
end

