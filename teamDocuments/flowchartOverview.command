#!/bin/bash

open https://docs.google.com/drawings/d/10-wdGfKTN1L77n2nFFgJ0kBPJ9rHukzWXx810gAEJSA/edit?usp=sharing

osascript -e 'tell application "Terminal" to close (every window whose name contains ".command")' &
exit