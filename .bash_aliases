##activate vitual env named venv
alias vir='source venv/bin/activate'
# python
alias p='python'
alias term='xfce4-terminal'
alias open='xdg-open'

#functions

gitNewRemote() {
    #do things with parameters like $1 such as
    echo "adding remote repo for $1"
    git remote add origin https://github.com/JREricson/"$1".git

}
