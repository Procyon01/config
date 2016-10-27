alias ls='ls -G'
alias ranger='~/repos/ranger/ranger.py'
alias cls='clear; pwd; echo ""; ls; echo ""'
alias :ba='cd ..'
alias cdl='cd "$1"; cls'
alias bpm='~/repos/bpm.py/bpm.py'

# http://bbs.archlinux.org/viewtopic.php?pid=564656#p564656
rot13() { echo "$@" | tr 'a-zA-Z' 'n-za-mN-ZA-M'; }

# dictionary definition fetcher
define() { 
    if [ -n "$1" ]; then
        w3m -dump "http://freedictionary.org/?Query=$1" | grep -i3 "$1" |
    tail -n+8 | sed ':a;N;$!ba;s/\n\n/\n/g' | head
    else
    echo "usage: define <word>"
    fi  
}

# inline shell math
calc() { echo "$@" | bc -l; }
alias math='calc';

cd_ls() {
    cd $1
    ls  
}
alias cdl='cd_ls'

cd_cls() {
    cd $1
    cls 
}
alias cdls='cd_cls'

. ~/repos/z/z.sh
