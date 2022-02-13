
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
    #do things with parameters like $1 such as
    echo "adding remote repo for $1"
    git remote add origin https://github.com/JREricson/"$1".git

}
