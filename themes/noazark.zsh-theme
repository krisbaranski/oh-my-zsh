function git_prompt_version() {
  echo $(git describe 2> /dev/null)
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n»%{$reset_color%}'
local current_dir='%{$terminfo[bold]%}%~/%{$reset_color%}'
local git_branch='$(git_prompt_info)$(git_prompt_version)%{$reset_color%}'

PROMPT="${user_host} ${current_dir} ${git_branch}
%{$terminfo[bold]%}"
POSTEDIT="$reset_color
"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} on branch "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓ "
