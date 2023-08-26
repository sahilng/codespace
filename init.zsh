#!/bin/zsh

# Exit script on any command failure
set -e

# Description:
# This script sets up a GitHub Codespace and then runs the 'pingpong' application on it.
# Requirements:
# - Fork this repository and replace my username with yours in the REPO assignment
# - GitHub CLI (gh) installed and authenticated
# - pingpong: https://www.github.com/sahilng/pingpong

REPO=${REPO:-sahilng/codespace}              # Default to 'sahilng/codespace' if REPO is not set
BRANCH=${BRANCH:-pong-server}                # Default to 'pong-server' if BRANCH is not set
MACHINE_TYPE=${MACHINE_TYPE:-basicLinux32gb} # Default to 'basicLinux32gb' if MACHINE_TYPE is not set
PORT=${PORT:-3000}                           # Default port

# Create a new Codespace and store its ID
codespace_id=$(gh cs create -R $REPO -b $BRANCH -m $MACHINE_TYPE)

# Make the desired port public
gh cs ports visibility $PORT:public -c $codespace_id

# Get the public URL for the Codespace
public_url=$(gh cs ports -q '.[0].browseUrl' -c $codespace_id --json browseUrl)
echo "Querying Public URL: $public_url"

# Start the pingpong application
pingpong $public_url

echo "Use 'gh cs delete' to delete the Codespace if not in use to avoid charges."
