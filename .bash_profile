export CLICOLOR=1

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

parse_git_branch

export PS1="\[\033[32m\]\w\[\033[34m\]\$(parse_git_branch)\[\033[00m\] $ "
