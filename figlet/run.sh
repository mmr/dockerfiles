#!/bin/bash

#
# Figlet text with random font and lolcat
# @author Marcio Ribeiro <binary@b1n.org>
#

text=$@

unwanted_fonts="term"
fonts=($(showfigfonts | awk '/^[a-z]/{print $1}' | grep -v $unwanted_fonts))
random_idx=$[RANDOM % ${#fonts[*]}]
random_font="${fonts[$random_idx]}"

figlet -f $random_font "$text" | /usr/games/lolcat
