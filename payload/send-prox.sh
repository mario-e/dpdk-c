#!/bin/bash

cmd=hello

if [ ! -z $1 ]; then
   echo "$*" | nc 127.0.0.1 8474 &2>/dev/null
   pkill nc
   cmd=exit
fi

while [ "$cmd" != "exit" ]; do
        printf "# "
        read cmd
        echo "$cmd" | nc 127.0.0.1 8474 &2>/dev/null
        pkill nc
done

