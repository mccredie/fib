#!/bin/bash -e -o pipefail

function fib() {
  local x=1
  local y=1
  for i in $( seq 1 $1 ); do
    echo $x
    local tmp=$x
    x=$y
    y=$( expr $y + $tmp )
  done
}

fib $1

