
# My own functions
function cdls () {
	\cd "$1";
	if [ $? -eq 0 ]; then
		ls;
	fi
}

function winzip ()
{
    if [ -z $1 ] || [ $1 = . ]; then
        # 現在の作業ディレクトリをZIPファイルに圧縮する．
        local zip_name="$(basename $(pwd)).zip"
        fd --type file --strip-cwd-prefix . -X 7z a -tzip -scsWIN $zip_name {}
    else
        # 指定したディレクトリをZIPファイルに圧縮する．
        local loc_dir=$(dirname $1)
        local target=$(basename $1)
        local zip_name="$(pwd)/${target}.zip"
        fd --type file --base-directory=$loc_dir . $target -X 7z a -tzip -scsWIN $zip_name {}
    fi
  
    # 作成したZIPファイルに含まれるファイルを確認する．不要であればコメントアウトしてください．
    7z l $zip_name
  
    return 0
}


function dockercomp () {
    docker compose run -itd main /bin/bash
}

function dockerexe () {
    if [ $# -eq 0 ]; then
        comm="/bin/bash"
    else
        comm=$1
    fi
    name=$(docker container ls -a --format "{{.Names}}" | fzf)
    docker container exec -it $name env TERM=xterm-256color $comm
#    set $argv $(docker container ls -a --format "{{.Names}}" | fzf)
#    docker container exec -it $2 $1
}


function dockerstop () {
    name=$(docker container ls -a --format "{{.Names}}" | fzf)
    echo "Stopping a container ${name}"
    docker container stop $name &> /dev/null && docker container rm $name &> /dev/null && echo "The container is stopped and removed."
}


# Aliases of terminal utilities
alias la='ls -A'
alias lf='ls -lh'
alias dff='df -lh'
alias dus='du -sh'
alias cd='cdls'
alias ks='ls'


