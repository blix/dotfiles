# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export TERM=xterm-256color

prompt() {

    if (( $? == 0 )); then
        local TAIL="\[\033[32m\]"
    else
        local TAIL="\[\033[31m\]"
    fi
    local GREY="\[\033[37m\]"
    local REGCOL="\[\033[0m\]"
    local CYAN="\[\033[36m\]"
    local HEAD_TIP=$GREY"-"
    local HEAD_START=$HEAD_TIP$CYAN"-("
    local HEAD_END=$CYAN")-"$HEAD_TIP
    local PURP="\[\033[35m\]"
    local BLUE="\[\033[34m\]"
    TAIL=$TAIL"\$"$REGCOL
    if (( `pwd|wc -c|tr -d " "` > $(($COLUMNS/2)) )); then
        local DIRSTR="\\W"
    else
        local DIRSTR="\\w"
    fi
    PS1=$HEAD_START$BLUE"\d | \T : $PURP$DIRSTR$HEAD_END\n[\u@\h]$TAIL "
}

PROMPT_COMMAND=prompt

alias vi=vim
