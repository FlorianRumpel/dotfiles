#!/bin/bash

DEVICE=$(upower -e | grep ps_controller)

if [ -z "$DEVICE" ]; then
  exit 0
fi

PERCENT=$(upower -i "$DEVICE" | grep percentage | awk '{print $2}')

echo "{\"text\": \"$PERCENT\", \"tooltip\": \"PS4 Controller: $PERCENT\"}"
