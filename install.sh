#!/bin/bash

SCRIPT=$(realpath "$0")
DIR=$(dirname "$SCRIPT")

rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
cp -r ${DIR} ~/.config/nvim