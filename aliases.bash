export SCRIPTS=`/home/cplager/scripts/dirstack/cleanDir ~/scripts`
alias cdd='cdtitle `~cplager/scripts/dirstack/current_dirstack`'
alias list='perl ~cplager/scripts/dirstack/dirlist_dirstack'
alias clds='export DIRECTORY_STACK=$PWD'

export UNAMER=`uname -r`

function xtitle() {
	echo -ne "\033]0;$@\007"
}

function cdtitle () {
	\cd $1
	export TITLE="$HOSTNAME : $PWD"
	xtitle "$HOSTNAME : $PWD"
        
}

function cd_original () {
	export DIRECTORY_STACK=`~cplager/scripts/dirstack/chdir_dirstack $1`
	cdd
}

function up () {
	export DIRECTORY_STACK=`~cplager/scripts/dirstack/up_dirstack $1`
	cdd
}

function back () {
	export DIRECTORY_STACK=`~cplager/scripts/dirstack/back_dirstack $1`
	cdd
}

function cdgr () {
	export DIRECTORY_STACK=`~cplager/scripts/dirstack/grep_dirstack $1`
	cdd
}

alias cd="cd_original"

alias b="back"
alias li="list"
alias cg="cdgr"

#export PS1='\[\033]0;$TITLE\007\]\u@\h> '
