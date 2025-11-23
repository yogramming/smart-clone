#!/bin/bash
# Script using which users can install this project on their local machine

echo "Installing smart-clone for user: $USER"

curl -fsSL -o ~/.local/bin/clone \
  https://raw.githubusercontent.com/yogramming/smart-clone/main/clone.sh

chmod +x ~/.local/bin/clone

echo ""
echo "✔ smart-clone installed!"
echo "Make sure ~/.local/bin is in your PATH."
echo ""
echo "Usage:"
echo "  clone <git-url>"
