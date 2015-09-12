function git_prompt
  set -l branch (git branch --no-color 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  set_color purple
  printf "%s" $branch
  set_color normal

  if test -n "$git_diff"
    printf "*"
  end

  printf " "
end

function fish_prompt
  set_color yellow
  printf "λ "
  set_color normal

  printf "%s " (prompt_pwd)

  set -l git_dir (git rev-parse --git-dir ^ /dev/null)
  if [ $status = "0" ]
    git_prompt
  end
end
