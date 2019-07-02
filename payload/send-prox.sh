#!/bin/bash

cmd=cmd
while [ "$cmd" != "exit" ]; do
        printf "# "
        read cmd
        echo "$cmd" | nc 127.0.0.1 8474 &2>/dev/null
        pkill nc
done

