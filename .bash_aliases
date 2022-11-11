
## python 
##########
#activate vitual env named venv
alias avir='source venv/bin/activate'
alias mvir='virtualenv venv'
vir(){
    virtualenv venv
    source venv/bin/activate

}
# python
alias python='python3'
alias p='python3'
alias pip='python3 -m pip'

#django
alias pmrs="python manage.py runserver"
alias pmmm="python manage.py makemigrations"
alias pmm="python manage.py migrate"
pmsa(){
    python manage.py startapp "$1"
}
pm(){
    python manage.py $@
}


## system
#########
alias term='xfce4-terminal'
alias open='xdg-open'
alias hist='history'
alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
alias .....='cd ../../../..;pwd'



#trash option to substitute rm
trashItem () {
    mv "$@" ~/.trash
}

# finds case insensitive in directory
findcdir(){
    echo "--- searching for $1 ---"
    items="$(find . -maxdepth 1 -iname "*$1*")"
    echo "items found:"
    echo "($items)" | wc -l
    echo "--- matching items ---" 
    echo "$items"
    
}

countfiles(){ 
    echo "Number of files matching \"$1\""
    items="$(find . -maxdepth 1 -iname "*$1*")"
    echo "($items)" | wc -l    
}


gh(){
    history | grep "$1"
}

hg(){
    history | grep "$1"
}



## git
########

gitNewRemote() {
  
    echo "adding remote repo for $1"
    git remote add origin https://github.com/JREricson/"$1".git

}

alias g='git'


##
checkInternetSpeed(){
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
}

