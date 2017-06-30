#!/bin/bash

printf "####################################################################\n"
printf "#                                                                  #\n"
printf "#  ::::::::.          ::         ::::::::.          ::         ::  #\n"
printf "#  ::      ::        ::::        ::      ::        ::::            #\n"
printf "#  ::      ::       ::  ::       ::      ::       ::  ::       ::  #\n"
printf "#  ::      ::      ::    ::      ::      ::      ::    ::      ::  #\n"
printf "#  ::::::::.      ::      ::     ::::::::.      ::      ::     ::  #\n"
printf "#  ::            ::::::::::::    ::            ::::::::::::    ::  #\n"
printf "#  ::           ::          ::   ::           ::          ::   ::  #\n"
printf "#  ::          ::            ::  ::          ::            ::  ::  #\n"
printf "#  ::         ::              :: ::         ::              :: ::  #\n"
printf "#                                                                  #\n"
printf "####################################################################\n"

# >>> Default

printf "\nUpdating and upgrading...\n"
apt-get update
apt-get upgrade -y

# >>> Programming languages

printf "\nInstalling tools\n"
apt-get install git vim python-pip
printf "set expandtab\nset tabstop=4\nset number\nset autoindent\nsyntax on" > ~/.vimrc
pip install --upgrade pip
pip install requests flask simplejson virtualenv
apt install -y nmap netcat curl
apt-get purge -y openjdk*
apt-get install -y oracle-java8-installer
apt-get install -y oracle-java8-set-default
