#!/bin/bash

#
# Create ASCII Art using asciiview.
# @author Marcio Ribeiro <binary@b1n.org>
#

image=$1
font=$[RANDOM % 9]
output_file=/tmp/generated-ascii-art

/usr/bin/create_ascii_art.exp $image $font $output_file &> /dev/null && \
	/usr/games/lolcat ${output_file}.txt
