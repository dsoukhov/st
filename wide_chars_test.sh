#!/bin/sh

alias printf=/usr/bin/printf
printf こんにちは！; sleep 2
printf '\x1b[5D'; sleep 2
printf へ; sleep 2
printf ' '; sleep 2
echo
