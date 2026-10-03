#!/bin/bash

# CP
cp() {
    local file="$1"
    local name="${file%.*}"

    g++ -std=c++20 -O2 -pipe -static -s "$file" -o "$name" &&
    "./$name"
}

cptest() {
    local file="$1"
    local name="${file%.*}"

    g++ -std=c++20 -O2 "$file" -o "$name" || return

    ./"$name" < input.txt > output.txt

    echo "========== OUTPUT =========="
    cat output.txt
}

cptest() {
    local file="$1"
    local name="${file%.*}"

    g++ -std=c++20 -O2 "$file" -o "$name" || return

    ./"$name" < input.txt > output.txt

    if diff -ZB output.txt expected.txt; then
        echo "✓ PASS"
    else
        echo "✗ WRONG ANSWER"
        diff -u expected.txt output.txt
    fi
}
