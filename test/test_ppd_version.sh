#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd version" {
  ppd --version | grep -E 'ppd version [0-9]+\.[0-9]+\.[0-9]+'
}