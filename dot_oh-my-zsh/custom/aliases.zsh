if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias lsa="exa --long --all --group --icons"
fi

if [ -x "$(command -v code)" ]; then
    alias zshc="code ~/.zshrc"
fi

# Use this version of pip install to install from BlackRock hosted libraries
if [ -x "$(command -v pip)" ]; then
    alias blkpip_install="pip install --disable-pip-version-check -i http://artifactory.blackrock.com:8081/artifactory/api/pypi/python-staging/simple --trusted-host artifactory.blackrock.com"
fi

alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias -s {yml,yaml}="code"
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'