#!/bin/zsh
# create a cookie jar directory in home directory
mkdir ~/.cookie_jar
# create a cookie
touch ~/.cookie_jar/cookie.txt
echo "You added your first cookie -- way to go! You can add more cookies to your jar by typing 'add_cookie' in your terminal. Pull out a cookie when you need it by running 'cookie' in your terminal. Enjoy!" >> ~/.cookie_jar/cookie.txt
# add functions to .zshrc
echo '
cookie() {
    file=$(/bin/ls -A ~/.cookie_jar/ | sort -R | tail -1)
    cat ~/.cookie_jar/$file
}' >> ~/.zshrc

echo '
add_cookie(){
    echo "Add a cookie!"
    read cookie
    file_count=$(/bin/ls -A ~/.cookie_jar | wc -l)
    new_count=$(($file_count + 1))
    file_name="cookie${new_count}.txt"
    touch ~/.cookie_jar/$file_name
    echo $cookie > ~/.cookie_jar/$file_name
}' >> ~/.zshrc

# refresh .zshrc
source ~/.zshrc

# run cookie function
cookie