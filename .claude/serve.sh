#!/bin/bash
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
npx serve "$1" -l "$2" --no-clipboard
