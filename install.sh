#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cy="\033[1;33m"
cb="\033[1;34m"
reset="\e[0m"

printf "\n${cg}[*] This install script will replace any config files currently stored in the ~/.config directory.\n"

printf "\n${cy}[-] Proceeding here will replace these config files\n"

printf "\n${cr}"
read -p "[!] DO YOU WANT TO PROCEED? [Y/N] " allowed

case $allowed in
    Y*|y*)
        #Need to add installing fonts
        #Configure and add .bashrc
        #Add mini-greeter config

        printf "\n\n${cg}[*] Copying dotfiles\n"

        printf "\n${cb}[-] Copying configs\n"
        cp -r config/* ~/.config
        printf "${cb}[-] Copied configs\n"

        printf "\n${cb}[-] Copying scripts\n"
        cp -r bin/* ~/.local/bin/.
        printf "${cb}[-] Copied scripts\n"

        printf "\n${cb}[-] Copying fonts\n"
        cp -r fonts/* ~/.local/share/fonts/.
        printf "${cb}[-] Copied fonts\n"

        printf "\n${cg}[*] Dotfiles installed successfully!\n";;
    *) printf "\n${cr}[!] Aborting!\n";;
esac

printf "${reset}"
