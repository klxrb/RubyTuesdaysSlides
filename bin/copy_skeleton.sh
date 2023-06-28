#!/bin/bash

if (( $# != 2 )); then
  echo "Illegal number of parameters"
  echo "Usage: $0 <folder_from_a_previous_meetup> <folder_for_the_next_meetup>"
  echo "Example: $0 2023-06-06 2023-07-04"
  exit
fi

mkdir $2

# Copy everything
cp -r $1/* $2

# INFO/TODO (Helio): first time I've created this, the folder public lost its sym link to shared, 
# duplicating all the assets
# However 'today' it did not, so I will leave this here and clean up later, once I need to use it again
# rm -rf $2/keynote/public
# ln -s ../../shared $2/keynote/public
