#!/bin/bash

# Check if keyboard lights are on or off
if xset q | grep -q "Scroll Lock: on"; then
    # If on, turn them off
    xset -led 3
else
    # If off, turn them on
    xset led 3
fi

