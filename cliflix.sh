#! /bin/bash
case $1 in
  play)
    asciiplayer play vdata.gif
    ;;

  search)
    cat netflix_titles.csv | grep $2 | awk -F "\"*,\"*" '{print $3}'
    ;;

  *)
    echo fail
    ;;

esac
