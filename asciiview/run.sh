#!/bin/bash

#
# Create ASCII Art using asciiview.
# @author Marcio Ribeiro <binary@b1n.org>
#

image=$1
font=$[RANDOM % 9]

/usr/bin/create_ascii_art.exp $image $font &> /dev/null && \
	cat generated-ascii-art.txt | lolcat
