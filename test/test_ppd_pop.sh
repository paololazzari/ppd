#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"

@test "ppd pop" {
  cd /tmp
  ppd pop
  pwd | grep -E "$wd"
  ppd pop | grep -E 'directory stack empty'
}

@test "ppd pop args" {
  ppd pop 1 | grep -E "ppd pop takes no arguments"
}
