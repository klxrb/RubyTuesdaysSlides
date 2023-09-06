#!/bin/bash

if (( $# != 2 )); then
  echo "Illegal number of parameters"
  echo "Usage: $0 <folder_from_a_previous_meetup> <folder_for_the_next_meetup>"
  echo "Example: $0 2023-07-04 2023-09-05"
  exit
fi

mkdir $2

# Copy everything
cp -r $1/* $2

# Link public to shared
rm -rf $2/keynote/public
ln -s ../../shared $2/keynote/public
