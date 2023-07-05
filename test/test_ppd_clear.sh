#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd clear" {
  ppd clear
  ppd list | grep -E 'directory stack empty'
}

@test "ppd clear args" {
  ppd clear 1 | grep -E "ppd clear takes no arguments"
}