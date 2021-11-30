# Welcome to Cookie Jar
Imposters syndrome is a real thing and, if you're like me, sometimes you feel out of your element and it can really get to you. This repo is a simple script that adds two functions to your `zsh` profile: `cookie` and `add_cookie` and creates a `cookie_jar` in your home directory.

Cookie Jar works like this: 
1. When you receive a compliment or did a good job, add a cookie to the cookie jar by running `add_cookie`.
2. When you're feeling down or imposter syndrome hits hard, grab a cookie and remind yourself you got this.

You can clone this repo and run this command in your `zshell` or manually add these two functions to your `.zshrc`, whichever you prefer. If you choose to clone it, do the following to set up your cookie jar: 
1. add execution permissions to the `setup.sh` with the following command: `chmod +x setup.sh`.
2. Run the setup.sh script with `./setup.sh`
3. Reference your `.zshrc` with `source ~/.zshrc`
4. Test it out by running `cookie`.