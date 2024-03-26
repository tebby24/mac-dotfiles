#!/bin/zsh

# Get the ID of the current space
space_id=$(yabai -m query --spaces --space | jq -r '.id')

# Get the number of windows in the current space
window_count=$(yabai -m query --windows --space "$space_id" | jq length)

# If there are no windows, change the space layout to float
if [ "$window_count" -eq 0 ]; then
    yabai -m space "$space_id" --layout float
fi

