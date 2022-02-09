##activate vitual env named venv
alias vir='source venv/bin/activate'
# python
alias p='python'
alias term='xfce4-terminal'
alias open='xdg-open'

#functions

gitNewRemote() {
    #do things with parameters like $1 such as
    echo "$1"
    git remote add origin git@github.com:JREricson/"$1".git

}

# example https://stackoverflow.com/questions/7131670/make-a-bash-alias-that-takes-a-parameter
