#!/bin/bash

i=1
for arg in "$@"; do
    echo "Argument $i : $arg"
    ((i++))
done

