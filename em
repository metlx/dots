#!/bin/bash
# tool to manage emacs configurations in linux 
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
DGRAY='\033[1;30m'
NC='\033[0m' # No Color

while getopts 'udc' OPTION; do
    case "$OPTION" in
        u)
            message="c l e a n i n g . . ."
            for i in $message
            do
                sleep .2
                printf "${RED}${i}"
            done
            sleep 1
            rm -rf ~/.doom.d
            rm -rf ~/.emacs.d
            printf "\n${BLUE}done\n"
            ;;
        d)
            message="D  O  O  M"
            for i in $message
            do
                sleep .2
                printf "${DGRAY}${i}"
            done
            sleep 1
            cp -r ~/Documents/doom.d ~/.doom.d
            cp -r ~/Documents/emacs.d ~/.emacs.d
            printf "\n${BLUE}done\n"
            ;;
        c)
            message="C E N T A U R"
            for i in $message
            do
                sleep .2
                printf "${DGRAY}${i}"
            done
            cp -r ~/Documents/centaur/emacs.d ~/.emacs.d
            sleep 1
            printf "\n${BLUE}done\n"
            ;;
    esac
done
shift "$(($OPTIND -1))"
