#!/bin/bash

if pidof -q waybar; then
    killall waybar
else
    waybar &
fi
