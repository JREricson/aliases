

## python 
##########
#activate vitual env named venv
alias vir='source venv/bin/activate'
# python
alias p='python'

## system
#########
alias term='xfce4-terminal'
alias open='xdg-open'

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


## git
########

gitNewRemote() {
    #do things with parameters like $1 such asxample https://stackoverflow.com/questions/7131670/make-a-bash-alias-that-takes-a-parameter./unknown employer -- craigslist --Application Developer - software _ qa _ dba _ etc - job employment.pdf

    echo "adding remote repo for $1"
    git remote add origin https://github.com/JREricson/"$1".git

}
gitNewFullPathRemote() {
    #do things with parameters like $1 such as
    echo "adding remote repo for $1"
    git remote add origin "$1"

}


##
checkInternetSpeed(){
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
}


