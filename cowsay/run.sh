#!/bin/bash

#
# Figlet text with random font and lolcat
# @author Marcio Ribeiro <binary@b1n.org>
#

text=$@
cows=($(find /usr/share/cowsay/cows -name '*.cow'))
random_idx=$[RANDOM % ${#cows[*]}]
random_cow="${cows[$random_idx]}"

/usr/games/cowsay -f $random_cow "$text" | /usr/games/lolcat
