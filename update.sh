#!/bin/bash

SCRIPT=$(realpath "$0")
DIR=$(dirname "$SCRIPT")

rm -rf ~/.config/nvim
cp -r ${DIR} ~/.config/nvim