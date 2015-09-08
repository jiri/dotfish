function fish_prompt
  set_color yellow
  printf "λ "
  set_color normal
  printf "%s " (prompt_pwd)
end
