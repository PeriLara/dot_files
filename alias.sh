alias la="ls -a"

mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

alias cd_vespa="cd ~/Workspace/Vespa/vespa-projects"

alias sshvpn="ssh hdfs@10.103.1.1"
alias sshdgx2="ssh l.perinetti@10.100.2.2"

alias vespa="pyenv activate vespa"
alias mkdoc="pyenv activate mkdocs"
alias sec="pyenv activate sec"
alias qml="pyenv activate qml"

alias jupyt="nohup jupyter lab &"

alias black_qml="cd ~/Workspace/qwant-ml/ | black qwant_ml tests scripts" 

alias pdfs='docker run -ti -e HADOOP_USER_NAME=hdfs -e HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop -v $(pwd):/data --rm apache/hadoop:3 hdfs dfs -fs hdfs://10.103.1.1:8020'
