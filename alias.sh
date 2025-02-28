
alias ..='cd ..'
alias la="lsd -a"
alias ls="lsd"
alias lla="ls -la"
alias lt="ls --tree"

mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

alias ibrew='arch --x86_64 /usr/local/Homebrew/bin/brew'
alias iarch='arch -x86_64 zsh'

alias jupyt="nohup jupyter lab &"


alias pdfs='docker run -ti -e HADOOP_USER_NAME=hdfs -e HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop -v $(pwd):/data --rm apache/hadoop:3 hdfs dfs -fs hdfs://10.103.1.1:8020'
