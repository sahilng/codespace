#!/bin/zsh

# The below init script will require that you fork this repository, change my username to yours in the line below, and install https://www.github.com/sahilng/pingpong

var=$(gh cs create -R sahilng/codespace -b pong-server -m basicLinux32gb)

gh cs ports visibility 3000:public -c $var

output=$(gh cs ports -q '.[0].browseUrl' -c $var --json browseUrl)

echo "Querying Public URL: $output"

pingpong $output
