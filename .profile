export GREP_COLOR=auto

alias global-off='sudo mv /Applications/GlobalProtect{,OFF}.app && killall -9 GlobalProtect'
alias global-on='sudo mv /Applications/GlobalProtect{OFF,}.app'

function psg() {
  ps wwwaux | egrep -i "($1|%CPU)" | grep -v grep
}

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
export PS1="\W \$(parse_git_branch)\$ "

LS_COMMON="-hBGl"
alias ls="command ls $LS_COMMON"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


export EDITOR=mvim
function gsub() {
  find $1 -type f | xargs perl -pi -e "s/$2/$3/g"
}

# Update name after ssh'ing into a remote machine
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

function gtc() { git co `git branch | grep "$@"`; }

alias ss='script/server -p 3001 --debugger'
alias sc='script/console --debugger'
alias st='script/test'
alias sdc='script/dbconsole -p'
alias sdc1='sdc development_shard_1'
alias gt='git'
alias unicorn="TDDIUM=t UNICORN_WORKERS=1 bundle exec unicorn_rails -c config/unicorn_example.rb"
alias bi='bundle install --path .bundle/gems --binstubs .bundle/bin'
alias bundle-grep="bundle exec ruby -e 'puts $:' | xargs grep -r"
function p() { cd ~/projects/$@; }

function sum() {
ruby -e "puts File.read('/dev/stdin').split.map(&:to_i).inject(:+)"
}
